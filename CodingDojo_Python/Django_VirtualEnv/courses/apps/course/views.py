from django.shortcuts import render, redirect
from .models import Course


def index(request):
    context = {
        'course' : Course.objects.all()

    }
    return render(request, 'course/index.html', context)

def create(request):
    if request.method == "POST":
        Course.objects.create(name=request.POST['Name'], description=request.POST['description'])
    return redirect('/')

def destroy(request, id):
    course_to_delete = Course.objects.get(id=id)
    if request.method == "GET":
        return render(request, 'course/confirm_delete.html', { 'course' : course_to_delete })

    course_to_delete.delete()
    return redirect('/')
# Create your views here.
