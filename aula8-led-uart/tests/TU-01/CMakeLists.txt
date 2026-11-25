cmake_minimum_required(VERSION 3.20.0)

find_package(Zephyr REQUIRED HINTS $ENV{ZEPHY_BASE})
project(TU-01)

target_sources(app PRIVATE
    src/main.c
    ../../lib/pwm_z42/src/pwm_z42.c
)

target_include_directories(
    ../../lib/pwm_z42/include
)