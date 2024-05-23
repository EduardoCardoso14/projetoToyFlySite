<?php
session_start();
include('class.php');
include('banco.php');
$db = new banco;
if (isset($_POST['save'])) {
    $nome = $_POST['nome'];
    $descricao = $_POST['descricao'];
    $imagem = $_POST['imagem'];
    $preco = $_POST['preco'];
    $idade = $_POST['idade'];
    $date = new DateTime();
    $datas = $date->format('Y-m-d H:i:s');
    echo $datas;
    $teste = [
        'nome' => mysqli_real_escape_string($db->conn, $nome),
        'descricao' => mysqli_real_escape_string($db->conn, $descricao),
        'imagem' => mysqli_real_escape_string($db->conn, $imagem),
        'preco' => mysqli_real_escape_string($db->conn, $preco),
        'idade' => mysqli_real_escape_string($db->conn, $idade),
        'datas' => mysqli_real_escape_string($db->conn, $datas)
    ];
    $cadastrar =  new produto;
    $resultado = $cadastrar->inserir($teste);
    if ($resultado == 1) {
        $_SESSION['message2'] = "Cadastrado com sucesso, " . $nome;
        header('location: products.php');
    } else {
        $_SESSION['message2'] = "Não deu certo.";
        header('location: index.php');
    }
} else {
    $_SESSION['message2'] = "deu errado";
    header('location: index.php');
}
