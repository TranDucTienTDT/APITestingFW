import requests
import config
from requests.structures import CaseInsensitiveDict

url = f"{config.BASE_URL}/api/dish/5/addons"

headers = CaseInsensitiveDict()
headers["Authorization"] = config.BEARER_TOKEN


response = requests.get(url, headers=headers)

print(response.status_code, response.json()['message'])

