import os
from http.server import SimpleHTTPRequestHandler, HTTPServer

BOOK_SITE = os.path.abspath('./book/_site')
DOCS_SITE = os.path.abspath('./analysis/.lake/build/doc')

class CustomHTTPRequestHandler(SimpleHTTPRequestHandler):
    def translate_path(self, path):
        # Serve /docs/* from DOCS_SITE
        if path.startswith('/docs/'):
            rel_path = path[6:]
            return os.path.join(DOCS_SITE, rel_path)
        # Serve everything else from BOOK_SITE
        rel_path = path.lstrip('/')
        return os.path.join(BOOK_SITE, rel_path)

if __name__ == '__main__':
    PORT = 8000
    handler = CustomHTTPRequestHandler
    with HTTPServer(("", PORT), handler) as httpd:
        print(f"Serving at http://localhost:{PORT}")
        print(f"Root: {BOOK_SITE}")
        print(f"/docs: {DOCS_SITE}")
        httpd.serve_forever()

