import json

class User:
    username = 'user'
    email = 'something@mail.com'
    is_valid = False

def create_new_user(data):
    user = User()
    try:
        # Parse JSON string to dict
        if isinstance(data, str):
            data = json.loads(data)
        
        if isinstance(data, dict) and "username" in data and "email" in data:
            user.username = data["username"]
            user.email = data["email"]
            user.is_valid = True
    except (json.JSONDecodeError, TypeError):
        pass
    
    return user

def user_to_json(user):
    if user.is_valid:
        return json.dumps({
            "username": user.username,
            "email": user.email
        })
    else:
        return json.dumps({})