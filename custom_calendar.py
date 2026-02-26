def day_from_number(day_number):
    days = {
        1: "Monday",
        2: "Tuesday",
        3: "Wednesday",
        4: "Thursday",
        5: "Friday",
        6: "Saturday",
        7: "Sunday"
    }

    x = None
    if day_number in days:
        return days[day_number]
    else:
        return x

def day_to_number(day):
     numbers = {
        "Monday": 1,
        "Tuesday": 2,
        "Wednesday": 3,
        "Thursday": 4,
        "Friday": 5,
        "Saturday": 6,
        "Sunday": 7
    }
     
     x = None
     if day in numbers:
         return numbers[day]
     else:
         return x
