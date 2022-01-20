cmake_minimum_required(VERSION 3.13)

project(capstone)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -pthread")

# find_package(XXX REQUIRED)
# include_directories(${XXX_INCLUDE_DIRS})

include_directories(include)

set(
  SOURCES
    src/main.cpp
)

# Add project executable
add_executable(${PROJECT_NAME} ${SOURCES})

target_link_libraries(${PROJECT_NAME} PUBLIC ${XXX_LIBRARIES})
