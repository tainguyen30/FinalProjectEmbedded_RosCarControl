// Generated by gencpp from file service_pkg/velocityResponse.msg
// DO NOT EDIT!


#ifndef SERVICE_PKG_MESSAGE_VELOCITYRESPONSE_H
#define SERVICE_PKG_MESSAGE_VELOCITYRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace service_pkg
{
template <class ContainerAllocator>
struct velocityResponse_
{
  typedef velocityResponse_<ContainerAllocator> Type;

  velocityResponse_()
    : msg()  {
    }
  velocityResponse_(const ContainerAllocator& _alloc)
    : msg(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _msg_type;
  _msg_type msg;





  typedef boost::shared_ptr< ::service_pkg::velocityResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::service_pkg::velocityResponse_<ContainerAllocator> const> ConstPtr;

}; // struct velocityResponse_

typedef ::service_pkg::velocityResponse_<std::allocator<void> > velocityResponse;

typedef boost::shared_ptr< ::service_pkg::velocityResponse > velocityResponsePtr;
typedef boost::shared_ptr< ::service_pkg::velocityResponse const> velocityResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::service_pkg::velocityResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::service_pkg::velocityResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::service_pkg::velocityResponse_<ContainerAllocator1> & lhs, const ::service_pkg::velocityResponse_<ContainerAllocator2> & rhs)
{
  return lhs.msg == rhs.msg;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::service_pkg::velocityResponse_<ContainerAllocator1> & lhs, const ::service_pkg::velocityResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace service_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::service_pkg::velocityResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::service_pkg::velocityResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::service_pkg::velocityResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::service_pkg::velocityResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::service_pkg::velocityResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::service_pkg::velocityResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::service_pkg::velocityResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7d96ed730776804754140b85e64c862e";
  }

  static const char* value(const ::service_pkg::velocityResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7d96ed7307768047ULL;
  static const uint64_t static_value2 = 0x54140b85e64c862eULL;
};

template<class ContainerAllocator>
struct DataType< ::service_pkg::velocityResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "service_pkg/velocityResponse";
  }

  static const char* value(const ::service_pkg::velocityResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::service_pkg::velocityResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string msg\n"
;
  }

  static const char* value(const ::service_pkg::velocityResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::service_pkg::velocityResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.msg);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct velocityResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::service_pkg::velocityResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::service_pkg::velocityResponse_<ContainerAllocator>& v)
  {
    s << indent << "msg: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.msg);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SERVICE_PKG_MESSAGE_VELOCITYRESPONSE_H
