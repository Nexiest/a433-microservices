# Membuat Docker image dengan nama item-app dan tag v1
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub
docker tag item-app:v1 ghcr.io/nexiest/item-app:v1

# Login ke Docker Hub
docker login -u nexiest --password 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 ghcr.io

# Mengunggah image ke Docker Hub
docker push ghcr.io/nexiest/item-app:v1

1