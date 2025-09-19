from bottle import route, run, template, get, post, request, Bottle, static_file

app = Bottle()


@app.route('/')
@app.route('/hello/<name>')
def hello(name = 'Stranger'):
    return template('Bonjour {{name}}, bienvenue sur le test', name = name)


@app.get('/login')
def login():
    return '''
        <form action="/login" method="POST">
            Username: <input name="username" type="text" />
            Password: <input name="password" type="password" />
            <input value="Login" type="submit" />
        </form>
    '''

@app.post('/login')
def do_login():
    username = request.forms.username
    password = request.forms.password

    if check_login(username, password):
        return template("SuccessLogin.tpl", name="Toto")
    else:
        return "<h1>Bad login</h1>"




def check_login(user, pwd):
    if user == "toto" and pwd == "password":
        return True
    return False


if __name__ == '__main__':
    app.run(host='localhost', port=8080, debug=True, reloader=True)