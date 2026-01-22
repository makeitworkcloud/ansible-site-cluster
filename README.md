# ansible-site-cluster

Site playbook that deploys OpenShift Local (CRC) with GitOps and KSOPS.

## What it does

Applies the `ansible-role-crc` role to deploy:
- OpenShift Local (CRC) cluster
- Custom TLS and DNS for `*.apps.makeitwork.cloud`
- ArgoCD with KSOPS for encrypted secrets
- Bootstrap application pointing to `kustomize-cluster`

## Dependencies

- `ansible-role-crc`: The actual CRC deployment role
- `kustomize-cluster`: GitOps manifests synced by ArgoCD
- SOPS/AGE keys for secret decryption

## Usage

```bash
ansible-playbook site.yml -i inventory
```

## Requirements

- Ansible 2.9+
- `community.sops` collection
- Target host with sufficient resources for CRC (10+ CPUs, 56GB+ RAM)

## License

GPL-3.0-or-later
