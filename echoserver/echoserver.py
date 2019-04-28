import os
import BaseHTTPServer, SimpleHTTPServer
from io import BytesIO

PORT = int(os.getenv('PORT', '8000'))


class SimpleHTTPRequestHandler(SimpleHTTPServer.SimpleHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.end_headers()
        self.wfile.write(b'Hello, world!')

    def do_POST(self):
        content_length = int(self.headers['Content-Length'])
        body = self.rfile.read(content_length)
        self.send_response(200)
        self.end_headers()
        response = BytesIO()
        response.write(body)
        self.wfile.write(response.getvalue())


httpd = BaseHTTPServer.HTTPServer(('localhost', PORT), SimpleHTTPRequestHandler)
httpd.serve_forever()
