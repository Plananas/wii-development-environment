# 🐧 Wii Homebrew Development Environment (Docker + devkitPPC)

This repo contains a portable, containerized development environment for building Wii Homebrew applications using [devkitPro](https://devkitpro.org/) toolchains and [GRRLIB](https://github.com/GRRLIB/GRRLIB).

> Designed to work seamlessly with Podman or Docker on Fedora/Bazzite-based systems.

---

## 🧱 Requirements

- Podman or Docker
- Linux (Fedora)
- Git

---

## 📦 Features

- ✅ Preinstalled `devkitPPC`, `libogc`, and `wii-portlibs`
- ✅ GRRLIB built from source and linked locally
- ✅ Fast development with live code mounting
- ✅ Compatible with Podman + SELinux

---

## 🚀 Getting Started

### 1. Clone the repo

```bash
git clone https://github.com/plananas/wii-docker-dev.git
cd wii-development-environment
```

### 2. Build and run the container

```bash
podman compose up --build
```

### 3. Build your project

```bash
cd {project_name}
make
```

---

## 📄 License

This project is open source and licensed under the MIT License.


