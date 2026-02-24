def clean_list(items):
    if not items:
        return []
    has_milk = any(item.strip().lower() == "milk" for item in items)
    if not has_milk:
        items.append("milk")
    result = []
    for index, item in enumerate(items, start=1):
        cleaned = item.strip().capitalize()
        result.append(f"{index}/ {cleaned}")
    
    return result
