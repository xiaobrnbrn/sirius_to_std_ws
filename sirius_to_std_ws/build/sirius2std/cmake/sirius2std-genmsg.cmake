# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sirius2std: 1 messages, 0 services")

set(MSG_I_FLAGS "-Isirius2std:/home/sishubin/SLAMcodes/My_Local_Repo/sirius_to_std_ws/src/sirius2std/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sirius2std_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sishubin/SLAMcodes/My_Local_Repo/sirius_to_std_ws/src/sirius2std/msg/IMU.msg" NAME_WE)
add_custom_target(_sirius2std_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sirius2std" "/home/sishubin/SLAMcodes/My_Local_Repo/sirius_to_std_ws/src/sirius2std/msg/IMU.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(sirius2std
  "/home/sishubin/SLAMcodes/My_Local_Repo/sirius_to_std_ws/src/sirius2std/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sirius2std
)

### Generating Services

### Generating Module File
_generate_module_cpp(sirius2std
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sirius2std
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sirius2std_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sirius2std_generate_messages sirius2std_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sishubin/SLAMcodes/My_Local_Repo/sirius_to_std_ws/src/sirius2std/msg/IMU.msg" NAME_WE)
add_dependencies(sirius2std_generate_messages_cpp _sirius2std_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sirius2std_gencpp)
add_dependencies(sirius2std_gencpp sirius2std_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sirius2std_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(sirius2std
  "/home/sishubin/SLAMcodes/My_Local_Repo/sirius_to_std_ws/src/sirius2std/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sirius2std
)

### Generating Services

### Generating Module File
_generate_module_eus(sirius2std
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sirius2std
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(sirius2std_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(sirius2std_generate_messages sirius2std_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sishubin/SLAMcodes/My_Local_Repo/sirius_to_std_ws/src/sirius2std/msg/IMU.msg" NAME_WE)
add_dependencies(sirius2std_generate_messages_eus _sirius2std_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sirius2std_geneus)
add_dependencies(sirius2std_geneus sirius2std_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sirius2std_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(sirius2std
  "/home/sishubin/SLAMcodes/My_Local_Repo/sirius_to_std_ws/src/sirius2std/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sirius2std
)

### Generating Services

### Generating Module File
_generate_module_lisp(sirius2std
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sirius2std
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sirius2std_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sirius2std_generate_messages sirius2std_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sishubin/SLAMcodes/My_Local_Repo/sirius_to_std_ws/src/sirius2std/msg/IMU.msg" NAME_WE)
add_dependencies(sirius2std_generate_messages_lisp _sirius2std_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sirius2std_genlisp)
add_dependencies(sirius2std_genlisp sirius2std_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sirius2std_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(sirius2std
  "/home/sishubin/SLAMcodes/My_Local_Repo/sirius_to_std_ws/src/sirius2std/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sirius2std
)

### Generating Services

### Generating Module File
_generate_module_nodejs(sirius2std
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sirius2std
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(sirius2std_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(sirius2std_generate_messages sirius2std_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sishubin/SLAMcodes/My_Local_Repo/sirius_to_std_ws/src/sirius2std/msg/IMU.msg" NAME_WE)
add_dependencies(sirius2std_generate_messages_nodejs _sirius2std_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sirius2std_gennodejs)
add_dependencies(sirius2std_gennodejs sirius2std_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sirius2std_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(sirius2std
  "/home/sishubin/SLAMcodes/My_Local_Repo/sirius_to_std_ws/src/sirius2std/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sirius2std
)

### Generating Services

### Generating Module File
_generate_module_py(sirius2std
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sirius2std
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sirius2std_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sirius2std_generate_messages sirius2std_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sishubin/SLAMcodes/My_Local_Repo/sirius_to_std_ws/src/sirius2std/msg/IMU.msg" NAME_WE)
add_dependencies(sirius2std_generate_messages_py _sirius2std_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sirius2std_genpy)
add_dependencies(sirius2std_genpy sirius2std_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sirius2std_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sirius2std)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sirius2std
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(sirius2std_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sirius2std)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sirius2std
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(sirius2std_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sirius2std)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sirius2std
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(sirius2std_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sirius2std)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sirius2std
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(sirius2std_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sirius2std)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sirius2std\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sirius2std
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(sirius2std_generate_messages_py std_msgs_generate_messages_py)
endif()
