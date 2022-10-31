# transcode a video from start time offset (-ss) to end time offset (-to) or a duration (-t)
ffmpeg -i input.mkv -ss 00:01:07.0 -c copy -to 00:10:08.0 output.mp4