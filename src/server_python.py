"""
A very simplistic http-server to run index.html.
Note that http.server is not recommended for production.

This server is only meant to show a basic webpage which is updated
through continous deployment.
"""

import http.server
import socketserver
import os

def server():
    PORT = 3000

    # change working directory into '/web'
    web_dir = os.path.join(os.path.dirname(__file__), '../web')
    os.chdir(web_dir)

    Handler = http.server.SimpleHTTPRequestHandler

    with socketserver.TCPServer(("", PORT), Handler) as httpd:
        print("serving at port", PORT)
        httpd.serve_forever()

if __name__ == '__main__':
    server()