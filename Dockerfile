# Gunakan base image Python terbaru
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Salin file requirements dan install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Salin semua file aplikasi ke container
COPY . .

# Expose port aplikasi (jika diperlukan)
EXPOSE 8080

# Jalankan aplikasi
CMD ["python", "app.py"]
