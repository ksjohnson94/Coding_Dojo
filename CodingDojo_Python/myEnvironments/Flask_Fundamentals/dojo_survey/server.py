from flask import Flask, render_template
app = Flask(__name__)
@app.route('/')
def collect():
    return render_template("index.html")
@app.route('/results')
def display():
    return redirect('/results')
app.run(debug=True)
