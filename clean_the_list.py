def clean_list(items):
    if not items:
        return []
    if "milk" not in items:
        items.append("milk")
    result = []
    for index, item in enumerate(items, start=1):
        cleaned = item.strip().capitalize()
        result.append(f"{index}/ {cleaned}")
    
    return result
