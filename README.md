CascadesParallax
==========================
A basic Cascades implementation of the parallax effect as seen on Yahoo! News Digest app for
iOS and Android.

I got only the main transition effect working just for fun. It's not perfect but you can always help.

There are two things in this implementation that I don't particularly like:
1- The diagonal bottom side of the image
2- The circle with the number

Both were implemented using static PNG files because Cascades doesn't provide a nice way for doing it, like
a free drawing canvas. Qt provide one but it was just too hard to make it work with Cascades.
But if you know a better way, please share it.

Cheers.