cmake_minimum_required(VERSION 3.13)

project(capstone)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -pthread")

find_package(glfw3 REQUIRED)
include_directories(${GLFW_INCLUDE_DIRS})

add_subdirectory(libs/glad)

include_directories(libs/glad/include)

include_directories(include)

set(
  SOURCES
    src/main.cpp
)

# Add project executable
add_executable(${PROJECT_NAME} ${SOURCES})

target_link_libraries(${PROJECT_NAME} PUBLIC glad glfw ${XXX_LIBRARIES})
