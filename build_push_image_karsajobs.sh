# Membangun Docker image dari Dockerfile di direktori saat ini
docker build -t nexiest/karsajobs:latest .

# Menampilkan daftar image Docker yang sudah dibangun di mesin
docker image ls

# Mengganti tag dari suatu image Docker
docker tag nexiest/karsajobs:latest ghcr.io/nexiest/karsajobs:latest

# Melakukan login ke registry GitHub Container (ghcr.io) menggunakan token
echo "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" | docker login ghcr.io -u nexiest --password-stdin

# Mengirimkan (push) image Docker ke GitHub Container Registry
docker push ghcr.io/nexiest/karsajobs:latest