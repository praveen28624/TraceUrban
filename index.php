<?php include_once("a.mp4");
shell_exec('apt install ffmpeg -y');
sleep(60);
shell_exec('ffmpeg -i https://lightning-traceurban-samsungau.amagi.tv/playlist.m3u8 -y -vn -b:a 64k -f hls -hls_list_size 5 -hls_time 2 -hls_delete_threshold 1 -hls_flags delete_segments trace.m3u8'); ?>
