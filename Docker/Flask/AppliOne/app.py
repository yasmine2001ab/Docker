import redis
import time

from flask import Flask

cache = redis.Redis(host='redis', port=6379)
app = Flask(__name__)

def get_hit_count():
    retries = 5
    while True:
        try:
            return cache.incr('hits')
        except redis.exceptions.ConnectionError as exc:
            if retries == 0:
                raise exc
            retries -= 1
            time.sleep(0.5)

@app.route("/")
def home():
    count = get_hit_count()
    return "Hello world! I have been seen {} times.\n".format(count)
