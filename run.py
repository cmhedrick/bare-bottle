import os
import sys
import argparse
from bottle import route, run, template, static_file


# Get current location, set as current location, and append to path
current_dir = os.path.dirname(os.path.abspath(__file__))
os.chdir(current_dir)
sys.path.append(current_dir)

#Allows CSS, JS, and Images to be stored in the '/static/' directory and be
#rendered using paths like "/static/css/global.css".
@route('/static/<filename:path>')
def server_static(filename):
    return static_file(filename, root=os.path.join(current_dir, "static"))

#'/' is the root of the site in most cases
@route('/')
def index():
    return template('templates/index.tpl')


def get_port():
    description = 'Set port for the bottle server to run on.'
    parser = argparse.ArgumentParser(description)
    parser.add_argument('-p', '--port', type=int,
                        help="The port number the server will run on")
    args = parser.parse_args()

    return args.port if args.port else 8080


if __name__ == "__main__":
    run(host="0.0.0.0", port=get_port(), reloader='True', debug='True')
