# Contributing to dnsmasq-docker

Thank you for your interest in contributing to the **dnsmasq-docker** project!

Please follow the guidelines below to ensure a smooth and productive contribution process.

---

## 1. Development Environment

- Ensure [Docker](https://www.docker.com/) is installed (preferably the latest version).
- Have a GitHub account to fork and submit Pull Requests.

---

## 2. Build the Docker Image Locally

To build the image locally for development or testing:

```bash
docker build -t yourname/dnsmasq:latest .
```

Replace `yourname` with your Docker Hub username or any custom tag.

---

## 3. Test the Docker Image Locally

To test the image locally:

### Step 1: Create a test DNS configuration

```bash
echo -e "address=/test.local/192.168.1.100\nlog-queries\nlog-facility=-" > dnsmasq.conf
```

This sets up a simple DNS rule and enables logging to stdout.

### Step 2: Run the container

```bash
docker run --rm -it \
  -p 53:53/udp \
  -v $(pwd)/dnsmasq.conf:/etc/dnsmasq.d/dnsmasq.conf:ro \
  yourname/dnsmasq:latest
```

> Notes:
> - Port `53/udp` is exposed to allow local DNS queries.
> - Logs will print to the terminal to verify resolution.
> - You can test from another machine on the same LAN by setting its DNS to this host’s IP.

---

## 4. Contribution Process

1. **Fork** the repository and clone it locally.
2. Create a **new branch** from `main` (e.g., `feature/my-feature`).
3. Implement your changes.
4. Make sure your code **builds and runs** successfully.
5. Submit a **Pull Request** with a clear description of your changes.

---

## 5. Coding Standards

- Keep your code clean and readable.
- Use meaningful commit messages (e.g., `feat: add new config option`, `fix: resolve port conflict`).
- Do not include any sensitive or personal information.
- Follow existing project structure and naming conventions.

---

## 6. Need Help?

If you’re unsure about anything or need support:
- Open an [Issue](https://github.com/your-org/dnsmasq-docker/issues)
- Or contact the repository maintainers directly.

---

Thank you for helping improve this project! 🙌
