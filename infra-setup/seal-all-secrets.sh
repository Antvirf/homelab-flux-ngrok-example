find . -name "secret.yaml" -print0 | while read -d $'\0' file
do
    # get file path from file
    filepath=${file%/*}
    cat $file | kubeseal \
    --controller-namespace cluster-system \
    --controller-name sealed-secrets \
    --format yaml \
    --scope cluster-wide > $filepath/sealed-secret.yaml
done

