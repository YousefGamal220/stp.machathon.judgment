#!/usr/bin/python
from flask import Flask, render_template, request
from werkzeug.utils import secure_filename
from werkzeug.datastructures import  FileStorage
import subprocess
app = Flask(__name__)

def unZipFile(fileName, dirName):
    #subprocess.call("./script.sh", shell=True)
    #subprocess.call(f"unZip {fileName}", shell=True)
    subprocess.Popen(['bash', '-c', f'. script.sh; unZip {fileName} {dirName}'])
    print("Done")


@app.route('/uploader', methods = ['GET', 'POST'])
def upload_file():
   if request.method == 'POST':
      f = request.files['file']
      f.save(secure_filename(f.filename))
      fileWithoutExtention = str(f.filename).split('.')[0]
      unZipFile(f.filename, fileWithoutExtention)
    
      return 'file uploaded successfully'
		
if __name__ == '__main__':
   app.run(debug = True)