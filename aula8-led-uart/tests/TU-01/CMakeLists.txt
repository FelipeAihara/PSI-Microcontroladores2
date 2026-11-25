cmake_minimum_required(VERSION 3.20.0)

find_package(Zephyr REQUIRED HINTS $ENV{ZEPHYR_BASE})
project(TU-01)

target_sources(app PRIVATE
    src/main.cpp
    ../../lib/pwm_z42/src/pwm_z42.c
    ../../lib/led/src/led.cpp
)

target_include_directories(app PRIVATE
    ../../lib/pwm_z42/include
    ../../lib/led/include
)