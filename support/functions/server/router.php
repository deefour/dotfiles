<?php

$filename = $_SERVER["SCRIPT_NAME"];

if (preg_match('#\/(.+)\-\-([\.a-z0-9\/]+)(\.[a-z0-9]+)$#i', $filename, $matches)) {
  readfile($matches[1] . $matches[3]);
} else {
  return false;
}