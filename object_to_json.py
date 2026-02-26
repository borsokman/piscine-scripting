import json

class User:
    username = 'user'
    email = 'something@mail.com'

def create_new_user(data):
    user = User()
    if isinstance(data, dict) and "username" in data and "email" in data:
        user.username = data["username"]
        user.email = data["email"]
    return user

def user_to_json(user):
    return json.dumps({
        "username": user.username,
        "email": user.email
    })