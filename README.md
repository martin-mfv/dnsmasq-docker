# 🧭 dnsmasq-docker

A lightweight Docker image for running a custom DNS server using [dnsmasq](https://thekelleys.org.uk/dnsmasq/doc.html).
Ideal for development networks, LAN environments, or custom DNS routing.

---

## 🚀 Features

- Tiny image based on Alpine Linux
- DNS server using `dnsmasq`
- Supports custom DNS config via mounted volumes
- Easy to deploy with Docker or Docker Compose
- Suitable for LAN/internal networks

---

## 🛠️ Usage

### 1. Build Image

```bash
docker build -t yourname/dnsmasq:latest .
```

### 2. Example `dnsmasq.conf`

```ini
address=/mytest.local/192.168.1.100
log-queries
log-facility=-
```

### 3. Run Container

```bash
docker run --rm -it \
  -p 53:53/udp \
  -v $(pwd)/dnsmasq.conf:/etc/dnsmasq.d/dnsmasq.conf:ro \
  yourname/dnsmasq:latest
```

### 4. Test From LAN

Configure a device in your LAN to use the host machine's IP as its DNS resolver.

---

## 🧪 Local Test Instructions

Please refer to [CONTRIBUTING.md](./CONTRIBUTING.md) for detailed test steps.

---

## 📁 Directory Structure

```bash
.
├── Dockerfile
├── dnsmasq.conf         # Optional sample config
├── README.md
├── CONTRIBUTING.md

```

---

## 📄 License

This project is licensed under the [MIT License](./LICENSE).

---

## 🤝 Contributing

PRs are welcome! See [CONTRIBUTING.md](./CONTRIBUTING.md) for setup and test instructions.
