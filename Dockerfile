# Menggunakan image Node.js versi 14 sebagai dasar
FROM node:14

# Menetapkan direktori kerja di dalam container sebagai /app
WORKDIR /app

# Menyalin semua file dari direktori lokal ke dalam direktori /app di dalam container
COPY . .

# Mengatur variabel lingkungan NODE_ENV ke nilai 'production'
ENV NODE_ENV=production 

# Mengatur variabel lingkungan DB_HOST ke nilai 'item-db'
ENV DB_HOST=item-db

# Menjalankan perintah npm install untuk menginstal dependensi production dengan opsi --unsafe-perm, dan kemudian menjalankan perintah npm run build
RUN npm install --production --unsafe-perm && npm run build

# Mengekspos port 8080 di dalam container
EXPOSE 8080

# Menjalankan perintah 'npm start' ketika container dijalankan
CMD ["npm", "start"]

1