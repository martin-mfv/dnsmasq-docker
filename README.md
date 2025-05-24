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

### 4. Use with Docker Compose

You can run `dnsmasq` using Docker Compose v2 syntax for easier setup:

```yaml
services:
  dnsmasq:
    image: yourname/dnsmasq:latest
    ports:
      - "53:53/udp"
    volumes:
      - ./dnsmasq.conf:/etc/dnsmasq.d/dnsmasq.conf:ro
    restart: unless-stopped
```

Save this as `compose.yml` in your project root.

Start it with:

```bash
docker compose up -d
```

---

## 🧪 Local Test Instructions

Please refer to [CONTRIBUTING.md](./CONTRIBUTING.md) for detailed test steps.

---

## 📝 About `dnsmasq.conf`

A sample config file is included (`dnsmasq.conf`) in the repository.
You should **copy and customize it** for your internal network needs, such as:

- Mapping internal domain names to IP addresses
- Enabling query logging
- Setting upstream DNS servers if needed

---

## 📁 Directory Structure

```bash
.
├── Dockerfile
├── dnsmasq.conf         # Optional sample config
├── README.md
├── CONTRIBUTING.md
└── .github
    └── ISSUE_TEMPLATE
        ├── bug_report.md
        └── feature_request.md
├── compose.yml          # Docker Compose file
```

---

## 📄 License

This project is licensed under the [MIT License](./LICENSE).

---

## 🤝 Contributing

PRs are welcome! See [CONTRIBUTING.md](./CONTRIBUTING.md) for setup and test instructions.
