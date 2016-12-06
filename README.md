# jekyll-video-embed

It provides several tags which generates a HTML snippet to embed videos, and can easily support others video websites. This plugin was heavily based on [@joelverhagen](https://gist.github.com/joelverhagen/1805814) gist example.

## Installation
Place the file in the `_plugins` directory.

## Usage
To include a video in your jekyll post, just use the string `{% tag video_id width height %}` and replace by its respective `tag` and `video_id`, the `width` (default value: 640) and `height`(default value: 360) are optional.

## Description
The following table shows the supported websites, their respective `tag`, and where is located the `video_id` (highlighted) in the URL of each video.

|    Website  |   Tag   |  Video ID                                                   |
|-------------|---------|-------------------------------------------------------------|
| ted.com     | ted     | ted.com/talks/**ken_robinson_says_schools_kill_creativity** |
| ustream.tv  | ustream | ustream.tv/channel/**6540154**                              |
| vimeo.com   | vimeo   | vimeo.com/**22439234**                                      |
| youtube.com | youtube | youtube.com/watch?v=**9bZkp7q19f0**                         |
