# Gunakan image Node.js yang ringan
FROM node:18-alpine

# Set direktori kerja di dalam container
WORKDIR /app

# Copy semua file dari direktori lokal ke dalam container
COPY . .

# Install dependencies menggunakan npm
RUN npm install

# Ekspos port yang digunakan aplikasi (sesuaikan dengan konfigurasi di aplikasi)
EXPOSE 3000

# Jalankan aplikasi
CMD ["npm", "start"]

# docker build -t scraping-berita:v1 .
