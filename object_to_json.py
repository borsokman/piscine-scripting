import json


class User:
    username = 'user'
    email = 'something@mail.com'


def create_new_user(json_string):
    try:
        data = json.loads(json_string)
    except json.JSONDecodeError:
        return User()

    if isinstance(data, dict) and "username" in data and "email" in data:
        user = User()
        user.username = data["username"]
        user.email = data["email"]
        return user

    return User()


def user_to_json(user):
    # Only return JSON if it's a custom user
    if (
        user.username == User.username
        and user.email == User.email
    ):
        return json.dumps({})

    return json.dumps({
        "username": user.username,
        "email": user.email
    })