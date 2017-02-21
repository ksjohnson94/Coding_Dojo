from django.shortcuts import render, redirect
import random
import string

def index(request):
    return render(request, 'random_word/index.html')


def generator(request):
    passkey = ''
    if request.method == 'POST':

        for x in range(10):
            if random.choice([1,2]) == 1:
                passkey += passkey.join(random.choice(string.ascii_uppercase + string.digits))
            else:
                passkey += passkey.join(random.choice(string.ascii_uppercase + string.digits))

    request.session['name']=passkey

    return redirect('/')

# Create your views here.
