# Captcha Breaker Environment (Using Tesseract)

## Small Usage Example

You may find an example here in "example" directory with a captcha image and it's corresponding result.

### Step by step:
1. Download the Docker Image:
```java
docker pull felipederodrigues/tesseract-captcha-breaker:latest
```
2. Create two directories:
   1. Input (with captcha image)
   2. Output (where you'll find the result)
   
3. Run the following command:
```java
docker run --rm -v $(pwd)/input:/in -v $(pwd)/output:/out felipederodrigues/tesseract-captcha-breaker:latest bash -c "tesseract /in/captcha.svl /out/result --psm 10 --oem 3 -c tessedit_char_whitelist=1234567890"
```
----------
You may customize the captcha command according to your needs.

The results may depend on it.

Have fun !

----------
Tesseract Version:
```shell
root@2ffc36a462cd:/# tesseract -v
tesseract 4.1.0-rc1-255-g332a1
 leptonica-1.78.0
  libgif 5.1.4 : libjpeg 8d (libjpeg-turbo 1.5.2) : libpng 1.6.34 : libtiff 4.0.9 : zlib 1.2.11 : libwebp 0.6.1 : libopenjp2 2.3.0
 Found AVX2
 Found AVX
 Found SSE
```
References: 

https://github.com/tesseract-ocr/tesseract/wiki/4.0-with-LSTM
