
# Usar una imagen base oficial de Python
FROM python:3.12.7

# Establecer el directorio de trabajo en /app
WORKDIR /app

# Copiar el archivo de requerimientos al contenedor
COPY requirements.txt .

# Instalar las dependencias
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copiar el resto del código de la aplicación al contenedor
COPY . .

# Exponer el puerto en el que correrá la aplicación
EXPOSE 8000

# Comando para correr la aplicación
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
