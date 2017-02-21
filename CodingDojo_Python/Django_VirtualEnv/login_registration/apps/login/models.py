# Inside your app's models.py file
from __future__ import unicode_literals
from django.db import models
import re, bcrypt
EMAIL_REGEX = re.compile(r'^[a-zA-Z0-9.+_-]+@[a-zA-Z0-9._-]+\.[a-zA-Z]+$')

class UserManager(models.Manager):
    def add_user(self, postData):
        errors = []

        if len(postData['first_name']) < 2:
            errors.append('First name must be at least 2 characters!')
        if not len(postData['last_name']):
            errors.append('Last name must be here!')
        if not len(postData['email']):
            errors.append('Email must be here!')
        if not EMAIL_REGEX.match(postData['email']):
            errors.append('Please enter a valid email')
        check_email = self.filter(email = postData['email'])
        if check_email:
            errors.append('Sorry email already exists!')
        if len(postData['password']) < 5:
            errors.append('password must be 5 characters long!')
        if not postData['password'] == postData['confirm_password']:
            errors.append('Passwords must match!')

        modelResponse = {}

        if errors:
            modelResponse['isRegistered'] = False
            modelResponse['errors'] = errors

        else:
            hashed_password = bcrypt.hashpw(postData['password'].encode(), bcrypt.gensalt())
            user = self.create(first_name = postData['first_name'], last_name = postData['last_name'],
            email = postData['email'], password = hashed_password)

            modelResponse['isRegistered'] = True
            modelResponse['user'] = user

        return modelResponse

    def login_user(self, postData):
        user = self.filter(email = postData['email'])
        errors = []
        modelResponse = {}
        if not user:
            # invalid email
            errors.append('Invalid email!')

        else:
            # found a user match, check the password to see if they match
            if bcrypt.checkpw(postData['password'].encode(), user[0].password.encode()):
                # login the user
                modelResponse['isLoggedIn'] = True
                modelResponse['user'] = user[0]
            else:
                # invalid email/password combo
                errors.append('Invalid email/password combination!')

        if errors:
            modelResponse['isLoggedIn'] = False
            modelResponse['errors'] = errors

        return modelResponse




class User(models.Model):
    first_name = models.CharField(max_length=200)
    last_name = models.CharField(max_length=200)
    email = models.CharField(max_length=200)
    password = models.CharField(max_length=200)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    objects = UserManager()
