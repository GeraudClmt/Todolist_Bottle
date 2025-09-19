from src.com.todolist.HelloWorld import check_login

def test_login():
    assert check_login('toto', 'password') == True