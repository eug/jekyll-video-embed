# jekyll-video-embed

It provides provides several tags that generates a HTML snippet to embed videos.

## Installation
Just place the file in the `_plugins` directory

## Usage

`{% tag video_id width height %}`

## Video ID
In order to extract the video id, the following table exemplify by highlighting the *id* string.

|    Website  |  Video ID                                                   |
|-------------|-------------------------------------------------------------|
| ted.com     | ted.com/talks/**ken_robinson_says_schools_kill_creativity** |
| ustream.tv  | ustream.tv/channel/**6540154**                              |
| vimeo.com   | vimeo.com/**22439234**                                      |
| youtube.com | youtube.com/watch?v=**9bZkp7q19f0**                         |

## Support
The current verion supports the following video websites:

|    Website  |   Tag   |
|-------------|---------|
| ted.com     | ted     |
| ustream.tv  | ustream |
| vimeo.com   | vimeo   |
| youtube.com | youtube |


