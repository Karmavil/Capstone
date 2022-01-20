
include_directories(include)

# add_executable(glad src/glad.c)

add_library(glad SHARED src/glad.c)
target_include_directories(glad PUBLIC include)
