<?php

// Configure
$app      = $public = $_SERVER['DOCUMENT_ROOT'];
$autoload = $app . '/vendor/autoload.php';

if (basename($public) == 'public') {
  $app = $app . '/..';
}

$indexHtml = glob($public . '/index.htm*');


// URL Parsing
$uri = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
$uri = urldecode($uri);


// Attempt to load .env for the project
if (file_exists($autoload)) {
  require $autoload;

  try {
    Dotenv::load($app);
  } catch (Exception $e) { }
}


// Routing with support for cache busting tokens
if (preg_match('#\/(.+)\-\-([\.a-z0-9\/]+)(\.[a-z0-9]+)$#i', $uri, $matches)) {
  $filename  = $public . '/' . $matches[1] . $matches[3];

  serveFile($filename);
} elseif ($uri === '/' and count($indexHtml)) {
  serveFile($indexHtml[0]);
} elseif ($uri !== '/' and file_exists($public . $uri)) {
  return false;
} elseif (file_exists($public . '/index.php')) {
  require_once $public . '/index.php';
} else {
  header(sprintf('HTTP/1.0 404 Not Found: \'%s\' does not exist', $uri), true, 404);
}



/**
 * Output a file, setting it's content-type.
 *
 * @param  string  $filename
 * @return void
 */
function serveFile($filename) {
  $finfo       = finfo_open(FILEINFO_MIME_TYPE);
  $contentType = finfo_file($finfo, $filename);
  $extension   = pathinfo($filename, PATHINFO_EXTENSION);

  switch($extension) {
    case 'css':
      $contentType = 'text/css';
      break;
    case 'js':
      $contentType = 'text/js';
      break;
  }

  header('Content-Type: ' . $contentType);
  readfile($filename);
}
