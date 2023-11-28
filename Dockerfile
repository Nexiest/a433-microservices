# FROM: Menggunakan image base "node" versi 18 dengan Alpine Linux sebagai sistem operasi
FROM node:18-alpine

# WORKDIR: Mengatur direktori kerja di dalam container menjadi /src
WORKDIR /src

# COPY: Menyalin file package.json dan package-lock.json ke direktori kerja
COPY package*.json ./

# RUN: Menjalankan perintah npm install untuk menginstal dependensi
RUN npm install

# ENV: Mengatur variabel lingkungan NODE_ENV menjadi "production"
ENV NODE_ENV=production

# RUN: Menjalankan perintah npm ci untuk instalasi dependensi dalam lingkungan produksi
RUN npm ci

# COPY: Menyalin semua file proyek ke dalam direktori kerja di dalam container
COPY . .

# EXPOSE: Membuka port 3000 untuk ketersediaan di luar container
EXPOSE 3000

# CMD: Menentukan perintah default yang akan dijalankan ketika container dimulai
CMD ["npm", "start"]
