

'''
this script was made for my local lab to pull character names from a website and build a wordlist agains my LOTR themed lab


'''

import requests
import re
from bs4 import BeautifulSoup


r = requests.get("https://www.giantbomb.com/the-lord-of-the-rings/3025-481/characters/?page=2")


#print(r.status_code)


soup = BeautifulSoup(r.text,"html.parser")


headers = soup.findAll('h3','title')


for items in headers:
	names = items.find(text=True)
	names = str(names)
	nospace=names.replace(" ","")
	#print(nospace)
	new = re.sub(r'\'\w+', '', nospace)
	#the below print statement confirms names is of type string
	#print(type(names))
	print(new)





#print(soup)
