# CMakeLists.txt
cmake_minimum_required(VERSION 3.10)

# 项目名与版本号
project(main VERSION 1.0)

# 设置 C++ 标准
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)
# 源文件
file(GLOB_RECURSE SRC_FILES sandbox/src/sandboxapp.cpp)
add_executable(Program ${SRC_FILES})
# 动态库输出路径
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/hazel/bin)
# 添加头文件
target_include_directories(Program 
PUBLIC 
${CMAKE_CURRENT_SOURCE_DIR}/vendor/spdlog/include
${CMAKE_CURRENT_SOURCE_DIR}/hazel/src
)
# 添加库
add_library(my_lib SHARED ${CMAKE_CURRENT_SOURCE_DIR}/hazel/src/hazel/Application.cpp)
set_target_properties(my_lib PROPERTIES
    POSITION_INDEPENDENT_CODE ON
    CXX_VISIBILITY_PRESET hidden
)



