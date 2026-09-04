#!/bin/bash
# Downloads the hero background video and saves it as assets/hero-bg.mp4
# Run this from inside the dav-academy-site folder: bash assets/download-video.sh
curl -L "https://videos.pexels.com/video-files/29109378/12575277_2560_1440_30fps.mp4" -o assets/hero-bg.mp4
echo "Saved to assets/hero-bg.mp4"
echo "Video by Chandresh Uike on Pexels (pexels.com/license) — free for commercial use, no attribution required."
