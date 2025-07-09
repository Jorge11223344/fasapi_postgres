# Imagen base oficial de Python
FROM python:3.11

# Establecer directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar todo el contenido del proyecto al contenedor
COPY . .

# Instalar las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Comando por defecto para ejecutar FastAPI con Uvicorn
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]

