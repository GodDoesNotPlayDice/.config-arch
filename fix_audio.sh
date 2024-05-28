#!/bin/bash

# Sometimes PulseAudio can dose not work properly, so we can use PipeWire instead.
sudo pacman -Rns pulseaudio
sudo pacman -S pipewire wireplumber pipewire-pulse pipewire-alsa