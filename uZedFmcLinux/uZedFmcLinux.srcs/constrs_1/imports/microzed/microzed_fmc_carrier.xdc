# ----------------------------------------------------------------------------
#     _____
#    /     \
#   /____   \____
#  / \===\   \==/
# /___\===\___\/  AVNET Design Resource Center
#      \======/         www.em.avnet.com/drc
#       \====/    
# ----------------------------------------------------------------------------
# 
#  This design is the property of Avnet.  Publication of this
#  design is not authorized without written consent from Avnet.
#  
#  Please direct any questions or issues to the MicroZed Community Forums:
#     http://www.microzed.org
# 
#  Disclaimer:
#     Avnet, Inc. makes no warranty for the use of this code or design.
#     This code is provided  "As Is". Avnet, Inc assumes no responsibility for
#     any errors, which may appear in this code, nor does it make a commitment
#     to update the information contained herein. Avnet, Inc specifically
#     disclaims any implied warranties of fitness for a particular purpose.
#                      Copyright(c) 2014 Avnet, Inc.
#                              All rights reserved.
# 
# ----------------------------------------------------------------------------

#
# MicroZed FMC Carrier Constraints
#

# User IO
#NET JX1_LED0     LOC = R19  | IOSTANDARD=LVCMOS18;  # "JX1_LED0"
set_property PACKAGE_PIN R19 [get_ports {emio_user_tri_io[0]}]
#NET JX1_LED1     LOC = V13  | IOSTANDARD=LVCMOS18;  # "JX1_LED1"
set_property PACKAGE_PIN V13 [get_ports {emio_user_tri_io[1]}]
#NET JX2_LED2     LOC = K16  | IOSTANDARD=LVCMOS18;  # "JX2_LED2"
set_property PACKAGE_PIN K16 [get_ports {emio_user_tri_io[2]}]
#NET JX2_LED3     LOC = M15  | IOSTANDARD=LVCMOS18;  # "JX2_LED3"
set_property PACKAGE_PIN M15 [get_ports {emio_user_tri_io[3]}]
#NET JX2_PB0      LOC = G19  | IOSTANDARD=LVCMOS18;  # "JX2_PB0"
set_property PACKAGE_PIN G19 [get_ports {emio_user_tri_io[4]}]
#NET JX2_PB1      LOC = G20  | IOSTANDARD=LVCMOS18;  # "JX2_PB1"
set_property PACKAGE_PIN G20 [get_ports {emio_user_tri_io[5]}]

set_property IOSTANDARD LVCMOS18 [get_ports {emio_user_tri_io[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {emio_user_tri_io[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {emio_user_tri_io[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {emio_user_tri_io[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {emio_user_tri_io[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {emio_user_tri_io[5]}]

# Bank 34, Vcco = 1.8V
#set_property IOSTANDARD LVCMOS18 [get_ports -filter { IOBANK == 34 } ]


set_property PACKAGE_PIN L17 [get_ports {emio_user_tri_io[6]}]
set_property PACKAGE_PIN L16 [get_ports {emio_user_tri_io[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {emio_user_tri_io[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {emio_user_tri_io[6]}]

set_property IOSTANDARD LVCMOS18 [get_ports TimerOut]
set_property PACKAGE_PIN G14 [get_ports TimerOut]

set_property IOSTANDARD LVCMOS18 [get_ports PulseOut]
set_property PACKAGE_PIN J15 [get_ports PulseOut]

