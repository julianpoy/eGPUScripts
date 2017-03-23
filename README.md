## eGPU Hacks
This repo is dedicated to all the scripts I write to make my Akitio Node eGPU run as smoothly as possible on Linux, OSX and Windoze.

Linux will be fairly Ubuntu-specific, not because I love Ubuntu, but simply because it's what I use everyday for work.

This entire repo will be very NVidia-specific. I don't have an AMD GPU and don't plan to purchase one.

## Requirements
For the scripts in this repo, you must generally have the following:
- nvidia-375
- nvidia-prime
- kernel 4.10 and newer (older kernels may work, but not tested)

## Specifics:

### switchGraphics.sh
This is for hotplugging in Ubuntu. Run the script, follow the prompts.

For EXTERNAL MONITOR ONLY. Don't expect any internal monitor fancyness, I haven't gotten that far yet.
