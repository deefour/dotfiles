<?php

$publicRoot = $_SERVER['DOCUMENT_ROOT'];
$autoload   = __DIR__ . '/../vendor/autoload.php';
$requestURI = $_SERVER['REQUEST_URI'];
$appRoot    = (strpos(basename($_SERVER['DOCUMENT_ROOT']), 'public') !== false) ?
                dirname($publicRoot) :
                $publicRoot;


// Attempt to load .env for the project
if (file_exists($autoload)) {
  require $autoload;

  try {
    Dotenv::load($appRoot);
  } catch (Exception $e) { }
}

if (preg_match('#^/index.php#', $requestURI) and getenv('SLIM_MODE')) {
  header('Location: /' . ltrim(preg_replace('#^/index.php#', '', $requestURI), '/'));
  exit;
}

if (preg_match('#\/(.+)\-\-([\.a-z0-9\/]+)(\.[a-z0-9]+)$#i', $filename, $matches)) {
  readfile($matches[1] . $matches[3]);
} else {
  return false;
}