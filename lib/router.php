<?php

$app      = __DIR__ . '/..';
$public   = $app . '/public';
$autoload = $app . '/vendor/autoload.php';

$uri = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
$uri = urldecode($uri);

// Attempt to load .env for the project
if (file_exists($autoload)) {
  require $autoload;

  try {
    Dotenv::load($app);
  } catch (Exception $e) { }
}

if (file_exists($public . '/' . $uri)) {
  return false;
}

if (preg_match('#\/(.+)\-\-([\.a-z0-9\/]+)(\.[a-z0-9]+)$#i', $uri, $matches)) {
  $filename  = $public . '/' . $matches[1] . $matches[3];
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
