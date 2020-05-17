# SliderChanger

This repo contains the source code for the SliderChanger tweak, built by following jontelang's tutorial, found [here](http://jontelang.com/guide/chapter3/the-project.html).  

While jontelang's tutorial is a bit outdated in terms of the classes being hooked, I have updated the code to work on an iPhone 6 running checkra1n, mobilesubstrate 0.9.7101 on iOS 12.4. All other versions or devices are untested. 

There is a slight delay in propagating the updated value to the lockscreen, please wait for the lockscreen string to be updated. 

## How to use this

You will need a working installation of Theos, including SDKs and all. Please visit the [Theos repository](https://github.com/theos/theos/wiki) for more information on Theos installation.

**Your device must be jailbroken to use this tweak**

1. Clone the repository onto your computer. 
2. `cd sliderchanger/` to get into the directory.
3. Run `make do` to package and install the `.deb` file to the IP at `$THEOS_DEVICE_IP`.
  - `make package` will also generate only the `.deb` file, in the `sliderchanger/packages/` directory.
  - `make install` will install the `.deb` file onto your device.
