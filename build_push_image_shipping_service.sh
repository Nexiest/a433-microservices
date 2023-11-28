# 1. Membangun image Docker
docker build -t ghcr.io/nexiest/shipping-service:latest .

# 2. Login ke GitHub Container Registry
echo "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" | docker login ghcr.io -u nexiest --password-stdin

# 3. Mengirimkan (push) image Docker ke GHCR
docker push ghcr.io/nexiest/shipping-service:latest
