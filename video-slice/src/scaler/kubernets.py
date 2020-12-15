from bottle import app, run, template, get, post, request, install, response
from bottle_cors_plugin import cors_plugin
import os

DEPLOYMENT_NAME = "nginx-deployment"

@post('/increase_replicas')
def alterar_replicas(num_replicas):
    os.system("./increase.sh")
    return "sucesso"

@post('/decrease_replicas')
def alterar_replicas(num_replicas):
    os.system("./decrease.sh")
    return "sucesso"

app = app()
app.install(cors_plugin('*'))

run(host='0.0.0.0', port=8082)
    