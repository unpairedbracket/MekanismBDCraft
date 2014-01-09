MekanismBDCraft
===============

A set of BCraft-style svg textures for Mekanism.

Scalable svgs and mcmetas go in the `svg` folder. Size-specific png files that aren't vectorised yet go into the appropriate place in the right `png/$res` folder. One-size-fits-all pngs (like guis) go in `png/any`.

Running `gradle build` converts the svgs to pngs and merges the existing ones into `/out` and produces zip files in the common resolutions in `/zip`. Shell scripts provided for those without gradle. If you're using Windows, you're on your own.
