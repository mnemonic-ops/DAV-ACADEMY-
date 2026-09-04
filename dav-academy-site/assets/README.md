# Hero background video — self-hosting instructions

The homepage expects the hero background video at:

    assets/hero-bg.mp4

(relative to dav-academy-homepage.html)

## Option A — one command (needs a machine with normal internet access)

    bash assets/download-video.sh

## Option B — manual download

1. Open: https://www.pexels.com/video/futuristic-abstract-tunnel-with-glowing-lines-29109378/
2. Click "Free download" and choose the largest available size.
3. Rename the downloaded file to `hero-bg.mp4`.
4. Place it in this `assets/` folder, next to this README.

## Recommended: compress before shipping to production

The source file is 2560x1440 — larger than a background video needs to be.
If you have ffmpeg installed, this shrinks it substantially with no visible
quality loss as a background element:

    ffmpeg -i hero-bg-original.mp4 -vf scale=1280:-2 -c:v libx264 \
      -crf 28 -preset slow -an assets/hero-bg.mp4

(`-an` strips audio, which isn't needed since the tag is muted anyway.)

## Credit

"Futuristic Abstract Tunnel with Glowing Lines" by Chandresh Uike on Pexels.
Free to use under the Pexels License (pexels.com/license) — commercial use
is allowed and attribution isn't required, but it's included here for your
records.
