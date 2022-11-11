#!/usr/bin/env python
import os 
 
try:
	os.system("ipconfig /flushdns")
except Exception as e:
	print("no se pudo")
finally:
	os.system("ìpconfig /displaydns")

	print("todo cargado")