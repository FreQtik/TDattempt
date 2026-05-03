# Mirror Lane: Arcane Tower Defense — Tauri Desktop Wrapper

This project wraps the standalone HTML/Canvas game in a Tauri desktop shell.

## What is included

- `frontend/index.html` — the complete game file.
- `src-tauri/` — the native Tauri wrapper.
- `.github/workflows/build-windows.yml` — GitHub Actions workflow that builds a Windows app/installer.
- `scripts/build-windows-local.ps1` — local Windows build helper.

## Fastest way to get a Windows .exe without local setup

1. Create a new GitHub repository.
2. Upload every file/folder from this project.
3. Open the **Actions** tab.
4. Run **Build Windows Desktop App**.
5. Download the generated artifact named `Mirror-Lane-Arcane-TD-Windows`.

The compiled output will be under `src-tauri/target/release/bundle` inside the artifact.

## Local Windows build

Install:

- Node.js LTS
- Rust via rustup
- Microsoft C++ Build Tools / Visual Studio Build Tools with the Desktop C++ workload

Then run:

```powershell
npm install
npm run build
```

Output path:

```text
src-tauri/target/release/bundle
```

## Why the .exe is not prebuilt here

This archive is generated in a Linux sandbox that does not currently include the Rust/Cargo/Tauri build toolchain or a Windows compiler/signing environment. The project is ready for Tauri, but the Windows executable needs to be compiled on Windows or by GitHub Actions.
