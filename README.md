# Homepwn

<img src="https://user-images.githubusercontent.com/74847054/112539452-65072300-8d87-11eb-8157-51a5241915a0.jpeg" height="256">

This repo contains KiCAD projects for a breakout to help jailbreak the homepod.

There are 3 projects:
- homebreakout: This is a form fitting PCB that fits underneath the homepod and contacts the POGO pins
- homepod_usb_breakout: This is a more complex PCB that does UART to USB and provides a USB connection to the Homepod.
- homepod_usb_breakout_simple: This is a simple, through hole, PCB that provides a USB connection to the Homepod, and access to the 1.8V UART pins directly.

You will need homebreakout and either homepod_usb_breakout or homepod_usb_breakout_simple

After soldering homebreakout, verify that the POGO pins do not touch each other. It requires a bit of patience and skill to solder them straight.

(note the image above has one of the FFC connectors backwards)

# 3D print version
Additionally this repo contains a 3D printable adapter, which exposes the connections and can be used for USB.  
Note: UART connections are also exposed, but require an appropriate 1.8V UART to USB controller.  

Additionally you will need M2x6 screws and Pogo pins.
The ones i used have the following properties:
- 1.02 mm outer diameter
- 15.8 mm total length
- 1.4  mm pin length  
(i used these: https://www.amazon.de/dp/B07SKD8Q42)

Print with the side going into the homepod facing upwards and print with support. First solder wires to the pins, only then insert them into the adapter (otherwise the 3D printed plastic will melt). Make sure they have a good solder connection, otherwise the USB connection will be very unstable or will not work at all.

<img src="https://github.com/tihmstar/homepwn/raw/main/homebreakout_3dprint/sideview.jpg" height=256>
<br>

<img src="https://github.com/tihmstar/homepwn/raw/main/homebreakout_3dprint/bottomview.jpg" height=256>

<img src="https://github.com/tihmstar/homepwn/raw/main/homebreakout_3dprint/topview.jpg" height=256>


# Warning

Jailbreaking your Homepod is not supported, and these design files were made from reverse engineering. While they should not cause physical damage to your Homepod assuming they are soldered correctly, you are ultimately responsible for any damage you cause.

Note that no IPSWs are available for the Homepod, and if the Jailbreak fails you will be stuck with a $250 paperweight. Proceed with caution.
