import sys
import requests
import getpass
from os.path import basename

# url = 'https://file-examples-com.github.io/uploads/2017/10/file_example_PNG_1MB.png'
url = input("URL pls: ")

downloadPath = '/home/' + getpass.getuser() + '/Downloads/'
specificPath = input("The default path is in " + downloadPath + " directory, Do you want to change it?(Y/N) ")

if specificPath == "Y":
    downloadPath = input("Enter the path u want to download in: ")

response = requests.get(url, stream = True)
fileName = basename(response.url)

with open(downloadPath + fileName, 'wb') as f:
    total_length = response.headers.get('content-length')

    if total_length is None:
        f.write(response.content)
    else:
        dl = 0
        total_length = int(total_length)
        for data in response.iter_content(chunk_size = 4096):
            dl += len(data)
            f.write(data)
            done = int(50 * dl / total_length)
            sys.stdout.write("\r[%s%s]" % ('=' * done, ' ' * (50 - done)) )    
            sys.stdout.flush()