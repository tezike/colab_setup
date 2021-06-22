import sys
from pyngrok import ngrok

public_url = ngrok.connect(sys.argv[1])
print(public_url)
