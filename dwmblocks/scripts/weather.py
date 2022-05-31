import requests as rq

def get_icon(id):
    if id == "01d":
        return ""
    elif id == "01n":
        return ""
    elif id == "02d":
        return ""
    elif id == "02n":
        return ""
    elif id.startswith("03"):
        return ""
    elif id.startswith("04"):
        return ""
    elif id == "09d":
        return ""
    elif id == "09n":
        return ""
    elif id == "10d":
        return ""
    elif id == "10n":
        return ""
    elif id == "11d":
        return ""
    elif id == "11n":
        return ""
    elif id == "13d":
        return ""    
    elif id == "13n":
        return ""
    elif id == "50d":
        return ""
    elif id == "50n":
        return ""
    else:
        return "滛"


if __name__ == '__main__':
    api_key = "adb0baa3704cfe9e9eca733ff09f3ade"
    url = "https://api.openweathermap.org/data/2.5/weather"
    params = {"appid": api_key, "zip": "68137"}
    response = rq.get(url=url, params=params)
    resp_json = response.json()
    desc = resp_json["weather"][0]["main"]
    desc = get_icon(resp_json["weather"][0]["icon"])
    temp = str(round(resp_json["main"]["temp"] - 273.15)) + "糖"
    feels_like = str(round(resp_json["main"]["feels_like"] - 273.15)) + "糖"
    print(desc, temp, feels_like, end="")


