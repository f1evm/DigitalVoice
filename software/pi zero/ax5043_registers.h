#ifndef AX5043_REGISTERS
#define AX5043_REGISTERS
/*
* AX5043 Register locations and Mode definitions
*
* Authors: Owen Chiaventone, KE0CFK
*          ON Semiconductor (see additional copyright notices)
*
* Taken from a combination of the programming guide
* and example code
*/

/* Copyright (c) 2007,2008,2009,2010,2011,2012,2013, 2014 AXSEM AG
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//
//     1.Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//     2.Redistributions in binary form must reproduce the above copyright
//       notice, this list of conditions and the following disclaimer in the
//       documentation and/or other materials provided with the distribution.
//     3.Neither the name of AXSEM AG, Duebendorf nor the
//       names of its contributors may be used to endorse or promote products
//       derived from this software without specific prior written permission.
//     4.All advertising materials mentioning features or use of this software
//       must display the following acknowledgement:
//       This product includes software developed by AXSEM AG and its contributors.
//     5.The usage of this source code is only granted for operation with AX5043
//       and AX8052F143. Porting to other radio or communication devices is
//       strictly prohibited.
//
// THIS SOFTWARE IS PROVIDED BY AXSEM AG AND CONTRIBUTORS ``AS IS'' AND ANY
// EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL AXSEM AG AND CONTRIBUTORS BE LIABLE FOR ANY
// DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
*/ SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

// Modes
#define AXRADIO_MODE_UNINIT                     0x00
#define AXRADIO_MODE_OFF                        0x01
#define AXRADIO_MODE_DEEPSLEEP                  0x02
#define AXRADIO_MODE_CW_TRANSMIT                0x03
#define AXRADIO_MODE_ASYNC_TRANSMIT             0x10
#define AXRADIO_MODE_WOR_TRANSMIT               0x11
#define AXRADIO_MODE_ACK_TRANSMIT               0x12
#define AXRADIO_MODE_WOR_ACK_TRANSMIT           0x13
#define AXRADIO_MODE_STREAM_TRANSMIT_UNENC      0x18
#define AXRADIO_MODE_STREAM_TRANSMIT_SCRAM      0x19
#define AXRADIO_MODE_STREAM_TRANSMIT_UNENC_LSB  0x1A
#define AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_LSB  0x1B
#define AXRADIO_MODE_STREAM_TRANSMIT            0x1C
#define AXRADIO_MODE_ASYNC_RECEIVE              0x20
#define AXRADIO_MODE_WOR_RECEIVE                0x21
#define AXRADIO_MODE_ACK_RECEIVE                0x22
#define AXRADIO_MODE_WOR_ACK_RECEIVE            0x23
#define AXRADIO_MODE_STREAM_RECEIVE_UNENC       0x28
#define AXRADIO_MODE_STREAM_RECEIVE_SCRAM       0x29
#define AXRADIO_MODE_STREAM_RECEIVE_UNENC_LSB   0x2A
#define AXRADIO_MODE_STREAM_RECEIVE_SCRAM_LSB   0x2B
#define AXRADIO_MODE_STREAM_RECEIVE             0x2C
#define AXRADIO_MODE_STREAM_RECEIVE_DATAPIN     0x2D
#define AXRADIO_MODE_SYNC_MASTER                0x30
#define AXRADIO_MODE_SYNC_ACK_MASTER            0x31
#define AXRADIO_MODE_SYNC_SLAVE                 0x32
#define AXRADIO_MODE_SYNC_ACK_SLAVE             0x33

#define AXRADIO_MODE_IS_STREAM_TRANSMIT(x)      (((x) & 0xF8) == ((AXRADIO_MODE_STREAM_TRANSMIT) & 0xF8))
#define AXRADIO_MODE_IS_STREAM_RECEIVE(x)       (((x) & 0xF8) == ((AXRADIO_MODE_STREAM_RECEIVE) & 0xF8))

#define AXRADIO_ERR_NOERROR                     0x00
#define AXRADIO_ERR_NOTSUPPORTED                0x01
#define AXRADIO_ERR_BUSY                        0x02
#define AXRADIO_ERR_TIMEOUT                     0x03
#define AXRADIO_ERR_INVALID                     0x04
#define AXRADIO_ERR_NOCHIP                      0x05
#define AXRADIO_ERR_RANGING                     0x06
#define AXRADIO_ERR_LOCKLOST                    0x07
#define AXRADIO_ERR_RETRANSMISSION              0x08
#define AXRADIO_ERR_RESYNC                      0x09
#define AXRADIO_ERR_RESYNCTIMEOUT               0x0a
#define AXRADIO_ERR_RECEIVESTART                0x0b

#define AXRADIO_STAT_RECEIVE                    0x00
#define AXRADIO_STAT_RECEIVESFD                 0x01
#define AXRADIO_STAT_CHANNELSTATE               0x02
#define AXRADIO_STAT_TRANSMITSTART              0x03
#define AXRADIO_STAT_TRANSMITEND                0x04
#define AXRADIO_STAT_TRANSMITDATA               0x05

// power states
#define AX5043_PWRSTATE_POWERDOWN               0x0
#define AX5043_PWRSTATE_DEEPSLEEP               0x1
#define AX5043_PWRSTATE_REGS_ON           	    0x4
#define AX5043_PWRSTATE_XTAL_ON           	    0x5
#define AX5043_PWRSTATE_FIFO_ON           	    0x7
#define AX5043_PWRSTATE_SYNTH_RX                0x8
#define AX5043_PWRSTATE_FULL_RX                 0x9
#define AX5043_PWRSTATE_WOR_RX           	    0xb
#define AX5043_PWRSTATE_SYNTH_TX                0xc
#define AX5043_PWRSTATE_FULL_TX                 0xd

//fifo commands
#define AX5043_FIFOCMD_NOP			            0x00
#define AX5043_FIFOCMD_DATA			            0x01
#define AX5043_FIFOCMD_REPEATDATA	            0x02
#define AX5043_FIFOCMD_TIMER		            0x10
#define AX5043_FIFOCMD_RSSI			            0x11
#define AX5043_FIFOCMD_FREQOFFS		            0x12
#define AX5043_FIFOCMD_RFFREQOFFS	            0x13
#define AX5043_FIFOCMD_DATARATE		            0x14
#define AX5043_FIFOCMD_ANTRSSI		            0x15
#define AX5043_FIFOCMD_TXCTRL		            0x1C
#define AX5043_FIFOCMD_TXPWR		            0x1D

#endif