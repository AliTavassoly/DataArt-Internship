# Downloader
Downlaoder is a python script for downloading via URL. The destination of the file and the chunk size could be set in this script.
Also it will set a proper name for downloaded file.
The script behave properly in Linux based systems, but in windows, it would be better if you specify the file destination.

## Restrictions
You have to run the script using python3.x

## Usage
The usage is so simple. You just have to run the script, and pass the URL you want to download as a required argument.
There also is an optional option that helps you with specifying the chunk size.

Here is an example:

```
python3 downloader.py https://example.com/download.txt --chunk-size=1024
```
