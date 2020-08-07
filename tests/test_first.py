from app import app

#rv = app.test_client().get('/2')
#print(rv.get_data().decode())
#print("chok")

def test_hello():
    print("chok")
    response = app.test_client().get('/')
    assert response.status_code == 200

#def test_insidedata():
#    response = app.test_client().get('/')
#    assert response.get_data().decode() == "hello chris this is new version"