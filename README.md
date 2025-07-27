# StarlightEye: OpenSource IMX585 Camera Board for Raspberry Pi
![](/img/PCBA.jpg)

## Version 2.0 Changes
Mainly changed the power tree so now it does not require an external 5V input but the board can take the 3.3V from FPC directly, there is a step-up converter that will step it up to 3.6V which is powering both IR filter switch (When used) and 3.3V analog LDO/1.8V Digital LDO input. By doing so the board size can finally shrink down to a perfect 39mm square which also matches the latest OneInchEye.  

The only down side is that the Step-Up convter I'm using here (TPSM83100) is expensive AF, I was going to pick TPSM81033 that is both cheaper and better but I have been waiting it to go on the market for four month now, I don't know when TI will actually get them ship to Mouser so for now I'm stuck with TPSM83100.  

## Introduction
Welcome to the **StarlightEye** project, an open-source camera board designed for Raspberry Pi Compute Module 4 boards using the IMX585. This project aims to provide a high-quality, affordable, and accessible camera module for advanced Raspberry Pi projects. The board is designed using KiCad v6, a popular open-source electronics design automation (EDA) software.

StarlightEye captures stunning high-resolution images and videos with improved low-light performance and dynamic range. It's perfect for photography enthusiasts, developers, and makers who want to level up their Raspberry Pi projects with a powerful camera.  
  
Also see [Quick Start Guide](https://github.com/will127534/StarlightEye/wiki/StarlightEye-Quick-Start-Guide)

## Features
* IMX585 sensor
* **Open-source hardware and software**
* Integrated IR filter switch control via I2C based on CH32V003
* Integrated TMP117 temperature sensor
* Compatible with Raspberry Pi5 and Raspberry Pi Compute Module 4 boards with a 22-pin FPC connector and 4-lane MIPI-CSI (same pinout as Raspberry Pi Compute Module 4 IO Board)
* Limited amount on [Tindle](https://www.tindie.com/products/34093/) for sell

## Notes
* Gerber and CPL file for JLCPCB is under /Gerber
* [Interactive BOM](https://htmlpreview.github.io/?https://github.com/will127534/StarlightEye/blob/main/bom/ibom.html) [(provided by InteractiveHtmlBom)
](https://github.com/openscopeproject/InteractiveHtmlBom) and JLCPCB BOM under /bom
* Source Code for CH32V003 based I2C controlled IR Filter Switch and Python code on RPI under /software


## Support
For questions, issues, or suggestions, please open an issue in the [GitHub repository](https://github.com/will127534/StarlightEye/issues)

## Schematic
![](/img/sch.jpg)
