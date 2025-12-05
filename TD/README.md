# Infrastructure GCP avec Terraform


### Initialisation

Prépare le répertoire de travail (télécharge les plugins et initialise les backends).
```bash
terraform init
```

Vérifie uniquement la syntaxe et la configuration du code.
```bash
terraform validate
```

Affiche les actions exactes (+ créer, ~ modifier, - supprimer) qui seront exécutées. Rien n'est créé.
```Bash
terraform plan
```

Exécute le plan pour déployer réellement les ressources.
```Bash
terraform apply
```

Pour supprimer toutes les ressources gérées par ce projet et éviter la facturation.
```Bash
terraform destroy
```
