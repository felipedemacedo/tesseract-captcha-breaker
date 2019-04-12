#!/bin/sh

# Just a small usage example:

docker run --rm -v $(pwd)/input:/in -v $(pwd)/output:/out felipederodrigues/tesseract-captcha-breaker:latest bash -c "tesseract /in/captcha.svl /out/result --psm 10 --oem 3 -c tessedit_char_whitelist=1234567890"
