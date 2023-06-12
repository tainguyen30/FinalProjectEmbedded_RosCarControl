# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "myrobot: 2 messages, 0 services")

set(MSG_I_FLAGS "-Imyrobot:/home/pi308/robot_control/src/myrobot/msg;-Imyrobot:/home/pi308/robot_control/src/myrobot/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(myrobot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pi308/robot_control/src/myrobot/msg/Twist.msg" NAME_WE)
add_custom_target(_myrobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "myrobot" "/home/pi308/robot_control/src/myrobot/msg/Twist.msg" "myrobot/Vector3"
)

get_filename_component(_filename "/home/pi308/robot_control/src/myrobot/msg/Vector3.msg" NAME_WE)
add_custom_target(_myrobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "myrobot" "/home/pi308/robot_control/src/myrobot/msg/Vector3.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(myrobot
  "/home/pi308/robot_control/src/myrobot/msg/Twist.msg"
  "${MSG_I_FLAGS}"
  "/home/pi308/robot_control/src/myrobot/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/myrobot
)
_generate_msg_cpp(myrobot
  "/home/pi308/robot_control/src/myrobot/msg/Vector3.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/myrobot
)

### Generating Services

### Generating Module File
_generate_module_cpp(myrobot
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/myrobot
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(myrobot_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(myrobot_generate_messages myrobot_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi308/robot_control/src/myrobot/msg/Twist.msg" NAME_WE)
add_dependencies(myrobot_generate_messages_cpp _myrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi308/robot_control/src/myrobot/msg/Vector3.msg" NAME_WE)
add_dependencies(myrobot_generate_messages_cpp _myrobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(myrobot_gencpp)
add_dependencies(myrobot_gencpp myrobot_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS myrobot_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(myrobot
  "/home/pi308/robot_control/src/myrobot/msg/Twist.msg"
  "${MSG_I_FLAGS}"
  "/home/pi308/robot_control/src/myrobot/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/myrobot
)
_generate_msg_eus(myrobot
  "/home/pi308/robot_control/src/myrobot/msg/Vector3.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/myrobot
)

### Generating Services

### Generating Module File
_generate_module_eus(myrobot
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/myrobot
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(myrobot_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(myrobot_generate_messages myrobot_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi308/robot_control/src/myrobot/msg/Twist.msg" NAME_WE)
add_dependencies(myrobot_generate_messages_eus _myrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi308/robot_control/src/myrobot/msg/Vector3.msg" NAME_WE)
add_dependencies(myrobot_generate_messages_eus _myrobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(myrobot_geneus)
add_dependencies(myrobot_geneus myrobot_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS myrobot_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(myrobot
  "/home/pi308/robot_control/src/myrobot/msg/Twist.msg"
  "${MSG_I_FLAGS}"
  "/home/pi308/robot_control/src/myrobot/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/myrobot
)
_generate_msg_lisp(myrobot
  "/home/pi308/robot_control/src/myrobot/msg/Vector3.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/myrobot
)

### Generating Services

### Generating Module File
_generate_module_lisp(myrobot
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/myrobot
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(myrobot_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(myrobot_generate_messages myrobot_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi308/robot_control/src/myrobot/msg/Twist.msg" NAME_WE)
add_dependencies(myrobot_generate_messages_lisp _myrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi308/robot_control/src/myrobot/msg/Vector3.msg" NAME_WE)
add_dependencies(myrobot_generate_messages_lisp _myrobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(myrobot_genlisp)
add_dependencies(myrobot_genlisp myrobot_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS myrobot_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(myrobot
  "/home/pi308/robot_control/src/myrobot/msg/Twist.msg"
  "${MSG_I_FLAGS}"
  "/home/pi308/robot_control/src/myrobot/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/myrobot
)
_generate_msg_nodejs(myrobot
  "/home/pi308/robot_control/src/myrobot/msg/Vector3.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/myrobot
)

### Generating Services

### Generating Module File
_generate_module_nodejs(myrobot
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/myrobot
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(myrobot_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(myrobot_generate_messages myrobot_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi308/robot_control/src/myrobot/msg/Twist.msg" NAME_WE)
add_dependencies(myrobot_generate_messages_nodejs _myrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi308/robot_control/src/myrobot/msg/Vector3.msg" NAME_WE)
add_dependencies(myrobot_generate_messages_nodejs _myrobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(myrobot_gennodejs)
add_dependencies(myrobot_gennodejs myrobot_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS myrobot_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(myrobot
  "/home/pi308/robot_control/src/myrobot/msg/Twist.msg"
  "${MSG_I_FLAGS}"
  "/home/pi308/robot_control/src/myrobot/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myrobot
)
_generate_msg_py(myrobot
  "/home/pi308/robot_control/src/myrobot/msg/Vector3.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myrobot
)

### Generating Services

### Generating Module File
_generate_module_py(myrobot
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myrobot
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(myrobot_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(myrobot_generate_messages myrobot_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi308/robot_control/src/myrobot/msg/Twist.msg" NAME_WE)
add_dependencies(myrobot_generate_messages_py _myrobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi308/robot_control/src/myrobot/msg/Vector3.msg" NAME_WE)
add_dependencies(myrobot_generate_messages_py _myrobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(myrobot_genpy)
add_dependencies(myrobot_genpy myrobot_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS myrobot_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/myrobot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/myrobot
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET myrobot_generate_messages_cpp)
  add_dependencies(myrobot_generate_messages_cpp myrobot_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/myrobot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/myrobot
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET myrobot_generate_messages_eus)
  add_dependencies(myrobot_generate_messages_eus myrobot_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/myrobot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/myrobot
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET myrobot_generate_messages_lisp)
  add_dependencies(myrobot_generate_messages_lisp myrobot_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/myrobot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/myrobot
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET myrobot_generate_messages_nodejs)
  add_dependencies(myrobot_generate_messages_nodejs myrobot_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myrobot)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myrobot\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myrobot
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET myrobot_generate_messages_py)
  add_dependencies(myrobot_generate_messages_py myrobot_generate_messages_py)
endif()
