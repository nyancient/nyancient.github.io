## Debian repository
[Signing key](nyancient.asc)

### Packages
- `uwu-desktop`: metapackage pulling in everything needed for a Sway-based desktop
- [`fido2-luks`](https://github.com/nyancient/fido2-luks): unlock encrypted root partition using a fido2 device

### Installation
```bash
curl https://nyancient.github.io/deb/setup.sh | sh
```

Or, if you want to inspect the (very short) setup script before running it:
```bash
curl https://nyancient.github.io/deb/setup.sh -o setup.sh
cat setup.sh # Convince yourself that the script is safe to run
sh ./setup.sh # Then run it
```
