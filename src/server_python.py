import http.server
import socketserver
import os

def server():
    PORT = 3000

    web_dir = os.path.join(os.path.dirname(__file__), '../web')
    os.chdir(web_dir)

    Handler = http.server.SimpleHTTPRequestHandler

    with socketserver.TCPServer(("", PORT), Handler) as httpd:
        print("serving at port", PORT)
        httpd.serve_forever()

if __name__ == '__main__':
    server()