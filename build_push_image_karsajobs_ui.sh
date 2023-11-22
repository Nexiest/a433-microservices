
# Membangun Docker image dari Dockerfile di direktori saat ini
docker build -t nexiest/karsajobs-ui:latest .

# Menampilkan daftar image Docker yang sudah dibangun di mesin
docker image ls

# Mengganti tag dari suatu image Docker
docker tag nexiest/karsajobs-ui:latest ghcr.io/nexiest/karsajobs-ui:latest

# Melakukan login ke registry GitHub Container (ghcr.io) menggunakan token
echo "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" | docker login ghcr.io -u nexiest --password-stdin

# Mengirimkan (push) image Docker ke GitHub Container Registry
docker push ghcr.io/nexiest/karsajobs-ui:latest

