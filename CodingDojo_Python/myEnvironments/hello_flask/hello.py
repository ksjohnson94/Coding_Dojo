from flask import Flask, render_template
app = Flask(__name__)
@app.route('/')
def index():
  return render_template("index.html", phrase="hello", times=5)
app.run(debug=True)
@app.route('/users', methods=['POST'])
def create_user():
   print "Got Post Info"
   # we'll talk about the following two lines after we learn a little more
   # about forms
   name = request.form['name']
   email = request.form['email']
   # redirects back to the '/' route
   return redirect('/')
app.run(debug=True) # run
