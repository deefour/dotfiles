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

if (preg_match('#\/(.+)\-\-([\.a-z0-9\/]+)(\.[a-z0-9]+)$#i', $requestURI, $matches)) {
  $filename  = $publicRoot . '/' . $matches[1] . $matches[3];
  $extension = pathinfo($filename, PATHINFO_EXTENSION);

  // finfo can't reliably determine the mime-type for certain text files
  // so we help out by matching against the file extension, falling back
  // to finfo when a match is not found.
  switch ($extension) {
    case 'css':
      $contentType = 'text/css';
      break;
    case 'js':
      $contentType = 'text/javascript';
      break;
    default:
      $finfo       = finfo_open(FILEINFO_MIME_TYPE);
      $contentType = finfo_file($finfo, $filename);
  }

  header('Content-Type: ' . $contentType);
  readfile($filename);
} else {
  return false;
}
