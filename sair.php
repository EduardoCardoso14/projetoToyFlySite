<?php
session_start();
if (isset($_SESSION['username'])) {
    unset($_SESSION['username']);
    session_destroy();
    header('location: index.php');
} else {
    session_destroy();
    header('location: index.php');
}