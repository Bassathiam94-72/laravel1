# Diagnostic – la page tourne sans s’afficher

## Étape 1 : Tester sans Laravel

1. Démarrez le serveur : `php artisan serve --port=3000` (ou le fichier `demarrer-serveur.bat`).
2. Dans le navigateur, ouvrez **uniquement** :
   ```
   http://127.0.0.1:3000/test.php
   ```

- **Si vous voyez** « OK - PHP fonctionne » → le serveur et PHP répondent. Le blocage vient de Laravel (voir étape 2).
- **Si la page tourne encore** ou « Impossible d’accéder » → le souci vient du serveur ou du réseau (pare-feu, mauvais port, autre logiciel). Essayez avec WAMP : `http://localhost/laravel1/public/test.php`.

## Étape 2 : Si test.php marche mais pas la page d’accueil

La session a été passée en **cookie** (plus d’écriture dans `storage`), ce qui évite beaucoup de blocages sous Windows.

Réessayez : **http://127.0.0.1:3000/**  
Si ça tourne encore, dites-le et on pourra désactiver temporairement d’autres parties (middleware, etc.).

## Récap

| URL | But |
|-----|-----|
| http://127.0.0.1:3000/test.php | Test PHP pur (sans Laravel) |
| http://127.0.0.1:3000/ | Page d’accueil Laravel |

Vous pouvez supprimer ce fichier `DIAGNOSTIC.md` plus tard.
