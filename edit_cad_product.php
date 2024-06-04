<?php
session_start();
include('class.php');
include('banco.php');
$db = new banco;
if (isset($_POST['save'])) {
    echo "<pre>";
    print_r($_POST);
    $id = $_POST['id'];
    $nome = $_POST['nome'];
    $descricao = $_POST['descricao'];
    $imagem = $_POST['imagem'];
    $preco = $_POST['preco'];
    $idade = $_POST['idade'];
    $date = new DateTime();
    $datas = $date->format('Y-m-d H:i:s');
    echo $datas;
    $teste = [
        'id' => mysqli_real_escape_string($db->conn, $id),
        'nome' => mysqli_real_escape_string($db->conn, $nome),
        'descricao' => mysqli_real_escape_string($db->conn, $descricao),
        'imagem' => mysqli_real_escape_string($db->conn, $imagem),
        'preco' => mysqli_real_escape_string($db->conn, $preco),
        'idade' => mysqli_real_escape_string($db->conn, $idade),
        'datas' => mysqli_real_escape_string($db->conn, $datas)
    ];
    $atualizar =  new produto;
    $resultado = $atualizar->atualizar_cad_produto($teste);
    if ($resultado == 1) {
        $_SESSION['message11'] = "Atualizado com sucesso, " . $nome;
        header('location: product_edit.php?id='.$id);
    } else {
        $_SESSION['message10'] = "Não deu certo.";
        header('location: index.php');
    }
} else {
    $_SESSION['message2'] = "deu errado";
    header('location: index.php');
}
