source .env # where you define your GITHUB_TOKEN

flux bootstrap github \
    --owner=$YOUR_USERNAME
    --repository=$YOUR_REPOSITORY
    --private=true --personal=true \
    --path=clusters/homelab-nuc \
    --components-extra=image-reflector-controller,image-automation-controller \
    --read-write-key