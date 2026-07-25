# Kinetic SDKs

Welcome to the official client SDKs for the **Kinetic Daemon**, automatically generated from the OpenAPI specification. This repository contains everything you need to build apps on top of the Kinetic P2P network.

## Repository Structure

- `openapi.yaml`: The source of truth for the Kinetic REST API.
- `rust/`: The generated Rust SDK. Ideal for desktop applications and embedded systems.
- `typescript/`: The generated TypeScript SDK (using `typescript-fetch`). Ideal for web apps, browser extensions, and mobile (React Native) clients.
- `examples/`: Minimal example scripts to help you get started quickly.

## Requirements

- A running `kinetic-daemon` listening on its local API port (default: `http://127.0.0.1:16002`).
- An API Token (found in `~/.config/kinetic/tokens/` for local nodes).

## Usage

### TypeScript
```bash
cd typescript
npm install
npm run build
```
See the `typescript/README.md` for detailed class references.

### Rust
```bash
cd rust
cargo build
```
See the `rust/README.md` for detailed trait and struct references.

## CI/CD
This repository is configured with a GitHub Action (`.github/workflows/ci.yml`) to automatically check compilation for both the TypeScript and Rust SDKs on every push to `main`.

## License
Apache 2.0
