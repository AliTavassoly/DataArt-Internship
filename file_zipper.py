import os
from os import listdir
from os.path import isfile, join
from time import sleep
from zipfile import ZipFile

rawPath = '/home/alico/Desktop/raw'
compressedPath = '/home/alico/Desktop/compressed'

#os.mkdir(rawPath)
#os.mkdir(compressedPath)

os.chdir(rawPath)

compressed_files = []

while True:
    current_files = [f for f in listdir(rawPath) if isfile(join(rawPath, f))]
    for fileName in current_files:
        if fileName not in compressed_files:
            ZipFile(compressedPath + '/' + fileName + '.zip', 'w').write(fileName)
            compressed_files.append(fileName)
    sleep(5)