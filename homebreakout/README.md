# Homepod Breakout Connector
This is a form fitting breakout for the bottom of the Homepod. The Homepod bottom connector has the following pinout:

    | NC | TX | RX | CTRL | D+ | D- | GND |
    | NC | NC | NC | GND  | NC | NC | NC  |
    
    TX = UART To Homepod (1.8V)
    RX = UART From Homepod (1.8V)

CTRL is a voltage controlled pin. It works as follows:

| No Connect, 0V up to 1.8V | No Function               |
| 1.8V to ~3.3V             | UART Enabled              |
| 3.3 to 5V                 | UART Enabled, USB Enabled |

Unfortunately there does not seem to be additional functionality embedded in the CTRL or other pins. I disassembled multiple Homepods and traced the pins back to the A8 processor and PMIC to verify. There are some non populated components near where the control pin goes by that may have been present during development.

UART is 1.8V. It is most likely _not_ 3.3V compatible.

# DFU Procedure

Flip the Homepod upside down and plug it in. Really.

After it enters DFU mode flip it right side up, or it will re-enter DFU mode. @DanyL has been working on a Checkra1n patch to make it not enter DFU mode.

There was a lot of fun reverse engineering to figure out how this works. Might make for a good blog post one day.


# BOM

| MFG    | Part                  | Qty | DigiKey       | Mouser           |
| ---    | -----------           | --- | -------       | ------           |
| FCI    | SLW8S-1C7LF           | 1   | 609-1935-ND   | 649-SLW8S-1C7LF  |
| Harwin | P70-2100045R          | 8   | 952-3134-1-ND | 855-P70-2100045R |
| Any    | M2x5mm machine screws | 4   |               |                  |

You will need an opposite side 8 pin 1mm pitch FFC cable. Such as:
Molex 15167-0236
DigiKey: WM22868-ND
Mouser: 538-15167-0236

You can also get a same side connector and solder the FCI connector reversed.


# Installation

Pogo pins face down, SLW85 connector goes up. The cutouts in the PCB are to help
make sure the pogo pin alignment is correct.

