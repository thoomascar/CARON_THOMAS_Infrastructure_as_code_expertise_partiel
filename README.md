Etape 1 : 
Dans le dossier iac_partiel/variables.tf 
-> il faut modifier les valeurs billing account et ssh_keys permettant d'adapter a votre compte gcp et votre clé ssh personnel.

Etape 2: 
On peut donc déployer le code terraform depuis iac_partiel/terraform. 
Une instance debian 12 ce déploie. 
une adresse ip sera dédié avec le port 8000 ouvert a l'exterieur et le port 22 ssh permettant la connexion au serveur et le déploiement via ansible

Etape 3: 
Dans le dossier iac_partiel/ansible 
le fichier host contiendra les informations de votre vm adresse IP et clé SSH qui sont a adapté a votre utilisation. 
le fichier playbook contiendra l'api fastapi avec tout les pré-requis demandé.
