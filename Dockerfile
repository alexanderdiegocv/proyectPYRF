# Usar la imagen oficial de Python 3.8 como base
FROM python:3.10

# Establecer el directorio de trabajo en /app
WORKDIR /app

# Copiar el archivo requirements.txt e instalar las dependencias
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copiar todo el proyecto Django al contenedor
COPY . .

# Iniciar el servidor de desarrollo de Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
