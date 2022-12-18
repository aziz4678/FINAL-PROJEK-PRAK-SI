url = "http://0.0.0.0:10015/"
db = 'surveys'
username = 'aziz'
password = '1'

import xmlrpc.client

common = xmlrpc.client.ServerProxy('{}/xmlrpc/2/common'.format(url))
version = common.version()
print("details...", version)

uid = common.authenthicate(db, username, password, {})
print("UID...", uid)

models = xmlrpc.client.ServerProxy('{}/xmlrpc/2/object'.format(url))
survey_ids = models.execute_kw(db, uid, password, 'survey.survey',)