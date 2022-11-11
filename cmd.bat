#!/usr/bin/env python

import os 

class App:
	def __init__(self):
		os.system("@title Ejercicio de python")
		print("""
Elige una opcion 
0) Comparador de años 
1) Comparador de multiplos 
2) Divisor de numeros

			""")
		self.entrada = input(">>>")

		if self.entrada == "0":
			self.opcion1()
		if self.entrada == "1":
			self.opcion2()
		if self.entrada == "2":
			self.opcion3()
		else:
			App()

	def opcion1(self):
		os.system("cls")
		print("Comparador de años \n")
		print("Estamos en el año 2022")
		
		self.numero1 = float(input("Escriba un año: "))

		if self.numero1 < 2022:
			print(f"Para que sea el año 2022 falta, {self.numero - 2022}")
			os.system("pause > null | set/p = presiona enter para volver al inicio")

		elif self.numero1 > 2022:
			print(f"El año ingresado es mayor al actual sobre pasa por: {2022 - self.numero}")
			os.system("pause > null | set/p = presiona enter para volver al inicio")

		elif self.numero1 == 2022:
			print(f"Ese es el año actual")
			os.system("pause > null | set/p = presiona enter para volver al inicio")


	def opcion2(self):
		os.system("cls")
		print("Comparador de multiplos \n ")
		try:
			self.entrada1 = int(input("Entra el primer numero: "))
			self.entrada2 = int(input("Entra el segundo numero: "))
		except:
			self.opcion2()
		if self.entrada1 >= self.entrada2 and self.entrada1 % self.entrada2 != 0:
			print(f"los numeros no son multiplos")
		elif self.entrada1 <= self.entrada2 and self.entrada1 % self.entrada2 == 0:
			print(f"los numeros ingresados son multiplos")
		elif self.entrada1 < self.entrada2 and self.entrada1 % self.entrada2 != 0:
			print(f"los numeros ingresados no son multiplos")
		else:
			print(f"los numeros ingresados si son multiplos")



	def opcion3(self):
		os.system("cls")
		print("Divisor de numeros \n ")
		try:
			self.entradad1 = float(input("Entra el dividendo: "))
			self.entradad2 = float(input("Entra el divisor: "))
		except:
			self.opcion3()
			print("hubo un error vuelve a intentar")
		self.resultado = self.entradad1 / self.entradad2
		self.residuo = self.entradad1 % self.entradad2

		print(f"el resultado de la dificion es: {self.resultado}")
		print(f"el residuo de la division es: {self.residuo}")

App()


