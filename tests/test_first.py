from app import app

def test_hello():
    response = app.test_client().get('/something')
    assert response.status_code == 200