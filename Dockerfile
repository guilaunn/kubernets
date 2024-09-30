# Use a imagem oficial do Python como base
FROM python:3.9-slim

# Define o diretório de trabalho
WORKDIR /app

# Copie o arquivo de requisitos e instale as dependências
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copie o restante da aplicação
COPY . .

# Exponha a porta em que a aplicação irá rodar
EXPOSE 5000

# Comando para iniciar a aplicação
CMD ["python", "app.py"]
