import sys
import requests
import getpass
from os.path import basename
import typer

app = typer.Typer()

def download_file(url: str, chunk_size: int, download_path: str):
    response = requests.get(url, stream = True)
    file_name = basename(response.url)
    
    with open(download_path + file_name, 'wb') as f:
        total_length = response.headers.get('content-length')

        if total_length is None:
            f.write(response.content)
        else:
            downloaded = 0
            progress_length = 100
            total_length = int(total_length)

            for data in response.iter_content(chunk_size):
                downloaded += len(data)
                f.write(data)
                done = int(progress_length * downloaded / total_length)
                sys.stdout.write("\r[%s%s]" % ('=' * done, ' ' * (progress_length - done)) )    
                sys.stdout.flush()

@app.command()
def download(url: str, chunk_size: int = 4096):
    download_path = '/home/' + getpass.getuser() + '/Downloads/'
    specific_path = input("The default path is in " + download_path + " directory, Do you want to change it?(Y/N) ")

    if specific_path == "Y":
        download_path = input("Enter the path u want to download in: ")
    
    try:
        download_file(url, chunk_size, download_path)
    except:
        sys.stdout.write("Invalid URL!")
        sys.stdout.flush()

if __name__ == "__main__":
    app()