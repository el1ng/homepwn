# Homepwn

This repo contains KiCAD projects for a breakout to help jailbreak the homepod.

There are 3 projects:
- homebreakout: This is a form fitting PCB that fits underneath the homepod and contacts the POGO pins
- homepod_usb_breakout: This is a more complex PCB that does UART to USB and provides a USB connection to the Homepod.
- homepod_usb_breakout_simple: This is a simple, through hole, PCB that provides a USB connection to the Homepod, and access to the 1.8V UART pins directly.

You will need homebreakout and either homepod_usb_breakout or homepod_usb_breakout_simple

After soldering homebreakout, verify that the POGO pins do not touch each other. It requires a bit of patience and skill to solder them straight.

# Warning

Jailbreaking your Homepod is not supported, and these design files were made from reverse engineering. While they should not cause physical damage to your Homepod assuming they are soldered correctly, you are ultimately responsible for any damage you cause.

Note that no IPSWs are available for the Homepod, and if the Jailbreak fails you will be stuck with a $250 paperweight. Proceed with caution.
