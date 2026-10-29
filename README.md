<div align="center">
    <h1>Amethyst</h1>
    <p>v0.2-dev | build 3
</div>

Minecraft Java Edition server implementation in Nim.

## Build & Run

Requires:

[Nim](https://nim-lang.org/) >= 2.2.10 \
[MCWire](https://github.com/CodCatDev/McWire) >= 0.1.0

Install
```
git clone https://github.com/CodCatDev/AmethystCore.git
cd AmethystCore
```

Build in release mode (GC ORC + No Debug)
```bash
nimble release
```

Build in debug (developer) mode (Standart GC + Debugging)
```bash
nimble dev
```