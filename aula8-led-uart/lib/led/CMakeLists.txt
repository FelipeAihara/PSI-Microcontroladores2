add_library(led_lib STATIC)
# target_include_directories(led_lib PUBLIC include)
add_dependencies(pwm_lib zephyr_generated_headers)