import json

def merge_two(first_dict):
    while True:
        key = input("Add a new entry:\nkey: ")
        if key == "exit":
            break
        value = int(input("value: "))
        first_dict[key] = value
    return json.dumps(first_dict)