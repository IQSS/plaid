import sys

def application(environ, start_response):
    status = '200 OK'
    output = 'Hello World from PLAID!\nPlatform for Lightweight Applications from IQSS Data Science\nPython version:\n' + sys.version + '\n'

    response_headers = [('Content-type', 'text/plain'),
                        ('Content-Length', str(len(output)))]
    start_response(status, response_headers)

    return [output]
