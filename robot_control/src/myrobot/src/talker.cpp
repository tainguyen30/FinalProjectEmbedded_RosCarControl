
#include "ros/ros.h"
#include "myrobot/Twist.h"
#include <sstream>
#include <wiringPi.h>
#include <wiringPiSPI.h>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

#define spi0 0

#define start 0
#define stop 1
#define speed_up 2
#define slow_down 3

uint8_t run_car;
float speed=0.15;
uint8_t channel_0 = 0xA0;
uint8_t channel_1 = 0xE0;
uint8_t data_X[3] ;
uint8_t data_Y[3] ;
float linear;
float angular;

void Start(void){run_car=1;  delay(50);}
void Stop(void){run_car=0;  delay(50);}
void Speed_up(void){ delay(50); speed+=0.1;}
void Slow_down(void){
  delay(50); speed-=0.1;
  if(speed<0) speed=0;           
}

void RW_data(uint8_t data[3], uint8_t channel){                
    data[0]= 0x01; // start bit
    data[1]= channel; // channel read
    data[2]= 0; // empty
    wiringPiSPIDataRW(spi0,data,3); // CE0, send data, 3 byte (3x8_bit)
}

void read_Joy(void){
  // if(run_car==1){
    RW_data(data_X, channel_0);
    uint16_t X = data_X[1]<<8 | data_X[2];
    linear = (float)(X/4095.0*(2*speed)-speed);
    RW_data(data_Y, channel_1);
    uint16_t Y = data_Y[1]<<8 | data_Y[2];
    angular = (float)(Y/4095.0*1.6-0.8);
  // }
}

void mainControl(void)
{
    wiringPiSetup();
    wiringPiSPISetup(spi0, 1000000);
    wiringPiISR(start,INT_EDGE_RISING, &Start);
    wiringPiISR(stop,INT_EDGE_RISING, &Stop);
    wiringPiISR(speed_up,INT_EDGE_RISING, &Speed_up);
    wiringPiISR(slow_down,INT_EDGE_RISING, &Slow_down);
}

int main(int argc, char **argv)
{
  mainControl();
  
  ros::init(argc, argv, "talker");
  ros::NodeHandle n;

  ros::Publisher chatter_pub = n.advertise<myrobot::Twist>("/cmd_vel", 1000);
  ros::Rate loop_rate(10);

  int count = 0;
  while (ros::ok())
  {
    read_Joy();
    myrobot::Twist msg1;
    msg1.linear.x = linear;
    msg1.angular.z = angular;
    chatter_pub.publish(msg1);

    loop_rate.sleep();
  }

  return 0;
}
