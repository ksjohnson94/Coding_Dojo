from django.shortcuts import render, redirect


def index(request):
    return render(request, 'rR/index.html')

def edit(request):
    return render(request, 'rR/edit.html')

def new(request):
    return render(request, 'rR/new.html')

def show(request):
    return render(request, 'rR/show.html')
# Create your views here.
