# Docker Multi-Stage Build for Golang Application

## 📌 Overview
This project demonstrates the **difference between Single-Stage and Multi-Stage Docker builds** using a simple **Golang calculator application**.

Both approaches are intentionally included to show:
- What happens when a Go application is built using a **single-stage Dockerfile**
- How **multi-stage Docker builds** help reduce image size and produce cleaner runtime images
- Why **Golang** is suitable for multi-stage and minimal-image builds

---

## 📁 Project Structure
```plaintext
docker-multistage-golang-build/
├── docker-single-stage-golang-build/
│   ├── Dockerfile        # Single-stage build definition
│   └── calculator.go     # Go calculator source code (single-stage)
│
├── Dockerfile            # Multi-stage build definition
├── calculator.go         # Go calculator source code (multi-stage)
└── README.md             # Documentation
```

---

## 🛠️ Tools & Technologies Used
- Docker
- Docker Multi-Stage Build
- Golang
- Ubuntu (build stage)
- Minimal runtime image (`scratch`)

---

## 🚀 How to Build & Run

### Single-Stage Build
```bash
cd docker-single-stage-golang-build
docker build -t go-calculator-single .
docker run -it go-calculator-single
```

### Multi-Stage Build
```bash
cd ..
docker build -t go-calculator-multistage .
docker run -it go-calculator-multistage
```

---

## 📚 Key Learnings
- Difference between single-stage and multi-stage Docker builds  
- How multi-stage builds reduce final image size  
- Why Golang binaries work well with minimal images  
- Docker image optimization using multi-stage builds