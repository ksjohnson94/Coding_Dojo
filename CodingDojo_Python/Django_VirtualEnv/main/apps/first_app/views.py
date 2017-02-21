from django.shortcuts import render

# Create your views here.

def index(request):
    print 'I hit index method in views.py'

    context = {
        'key': 'I hit index method in views.py'
    }

    return render(request, 'first_app/index.html', context)
