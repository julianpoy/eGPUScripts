## eGPU Scripts
This repo is dedicated to all the scripts I write to make my Akitio Node eGPU run as smoothly as possible on Linux, OSX and Windoze.

Linux will be fairly Ubuntu-specific, not because I love Ubuntu, but simply because it's what I use everyday for work.

This entire repo will be very NVidia-specific. I don't have an AMD GPU and don't plan to purchase one.

## Requirements
- nvidia-387 and nvidia-prime

``` sudo add-apt-repository ppa:graphics-drivers/ppa ```

``` sudo apt-get update ```

``` sudo apt-get install nvidia-387 nvidia-prime```

- kernel 4.10 and newer (older kernels may work, but not tested)

``` http://kernel.ubuntu.com/~kernel-ppa/mainline/ ```

## Specifics:

### switchGraphics-GDM.sh and switchGraphics-LightDM.sh
This is for hotplugging in Ubuntu. Run the script, follow the prompts.

For EXTERNAL MONITOR ONLY. Don't expect any internal monitor fancyness, I haven't gotten that far yet.
