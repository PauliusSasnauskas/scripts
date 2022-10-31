# uses a lossy + lossless compression with progressive web loading
./cjpeg-static -quality 90 input.jpg > intermediate.jpg
./jpegtran-static -optimize -progressive intermediate.jpg > output.jpg

# or single command to do it all, with 90% (-m90) quality
jpegoptim --all-progressive -s -m90 input/*.jpg