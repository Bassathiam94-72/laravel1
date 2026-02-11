<?php

/**
 * Script routeur pour le serveur de développement PHP intégré (php artisan serve).
 * Émule mod_rewrite d'Apache pour que Laravel fonctionne correctement.
 */

$publicPath = getcwd();

$uri = urldecode(
    parse_url($_SERVER['REQUEST_URI'] ?? '', PHP_URL_PATH) ?? ''
);

// Si le fichier existe dans public/, le servir directement
if ($uri !== '/' && $uri !== '' && file_exists($publicPath.$uri)) {
    return false;
}

require_once $publicPath.'/index.php';
