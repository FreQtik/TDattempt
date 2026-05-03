# Run this from the project root on Windows after installing:
# - Node.js LTS
# - Rust via rustup
# - Microsoft C++ Build Tools / Visual Studio Build Tools with Desktop C++ workload

npm install
npm run build

Write-Host "Build finished. Look in: src-tauri/target/release/bundle"
