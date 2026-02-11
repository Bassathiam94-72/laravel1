# Utiliser Laravel avec WAMP (sans php artisan serve)

Avec **php artisan serve**, Windows peut couper la connexion (ERR_CONNECTION_RESET).  
Utilisez **WAMP** à la place : pas de pare-feu, pas de port bloqué.

---

## Étapes

### 1. Démarrer WAMP
- Lancez WAMP (icône verte = Apache + MySQL démarrés).
- Si l’icône est orange ou rouge : clic gauche → « Démarrer tous les services ».

### 2. Activer mod_rewrite (une seule fois)
- Clic gauche sur l’icône WAMP → Apache → Apache modules → **rewrite_module** doit être coché.
- Si ce n’est pas le cas, cliquez pour l’activer, puis redémarrez Apache.

### 3. Ouvrir le site dans le navigateur
Ouvrez **une** de ces adresses :

- **http://localhost/laravel1/public**
- ou **http://localhost/laravel1/public/**

**Important :** l’URL doit contenir **/public** pour que Laravel fonctionne correctement.

---

## Test rapide (sans Laravel)
Pour vérifier que WAMP répond :

- **http://localhost/laravel1/public/test.php**  
  → Vous devez voir : « OK - PHP fonctionne ».

---

## En résumé
| Méthode              | URL à utiliser                          |
|----------------------|-----------------------------------------|
| **WAMP (recommandé)** | http://localhost/laravel1/public         |
| php artisan serve    | Souvent ERR_CONNECTION_RESET sous Windows |

Si vous préférez quand même utiliser **php artisan serve**, il faut autoriser PHP dans le pare-feu Windows (règle entrante pour le port 3000 ou pour php.exe).
