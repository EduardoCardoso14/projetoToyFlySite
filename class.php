<?php
class usuario
{
    public $conn;
    public function __construct()
    {
        $db = new banco;
        $this->conn = $db->conn;
    }

    public function inserir($teste)
    {
        $nome = $teste['nome'];
        $login = $teste['login'];
        $datas = $teste['datas'];
        $senha = $teste['senha'];

        $sql = "INSERT INTO usuario (nome,email,senha,data_cad,apagado) VALUES 
        ('" . $nome . "','" . $login . "','" . $senha . "','" . $datas . "',0)";
        $result = $this->conn->query($sql);
        if ($result == 1) {
            //echo "ok";
            return true;
        } else {
            //echo "nok";
            return false;
        }
    }
    public function atualizar_cad_user($teste)
    {
        $id = $teste['id'];
        $nome = $teste['nome'];
        $login = $teste['login'];
        $datas = $teste['datas'];
        $senha = $teste['senha'];
        echo $sql = "UPDATE usuario SET nome='" . $nome . "', email='" . $login . "', data_edicao='" . $datas . "', senha='" . $senha . "' WHERE id='" . $id . "'";
        $result = $this->conn->query($sql);
        if ($result == 1) {
            //echo "ok";
            return true;
        } else {
            //echo "nok";
            return false;
        }
    }
    public function validar($inputData)
    {
        $login = $inputData['login'];
        $senha = $inputData['senha'];

        echo $sql = "select * from usuario where nome='" . $login . "' and senha='" . $senha . "' and apagado = 0 or email='" . $login . "' and senha='" . $senha . "' and apagado = 0";
        $result = $this->conn->query($sql);
        $linha = $result->fetch_array();
        $result = $result->num_rows;

        if ($result == 1) {
            $_SESSION["nome"] = $linha['nome'];
            return true;
        } else {
            echo "n salvou";
            return false;
        }
    }

    public function pegar_user($login)
    {
        $xpto = "select * from usuario where nome='" . $login . "' or email='" . $login . "' and apagado = 0";
        $dados = $this->conn->query($xpto);
        return $dados;
    }

    public function buscar_um_usuario($search)
    {
        $xpto = "select * from usuario where nome like '%" . $search . "%' and apagado = 0 or email like '%" . $search . "%' and apagado = 0";
        $dados = $this->conn->query($xpto);
        return $dados;
    }

    public function contar()
    {
        $sql = "select count(*) as contador from usuario where apagado = 0";
        $resultado = $this->conn->query($sql);
        return $resultado;
    }

    public function deletar($teste)
    {
        $id = $teste['id'];
        $datas = $teste['datas'];
        $apagar = 1;

        $sql = "update usuario set apagado='" . $apagar . "', data_delete='" . $datas . "' where id='" . $id . "' ";
        $result = $this->conn->query($sql);

        if ($result == 1) {
            //echo "ok";
            return true;
        } else {
            //echo "nok";
            return false;
        }
    }

    public function listar()
    {
        $sql = "SELECT * FROM usuario WHERE apagado = 0";
        $resultado = $this->conn->query($sql);
        return $resultado;
    }
}
class produto
{
    public $conn;
    public function __construct()
    {
        $db = new banco;
        $this->conn = $db->conn;
    }
    public function inserir($teste)
    {
        $nome = $teste['nome'];
        $descricao = $teste['descricao'];
        $imagem = $teste['imagem'];
        $preco = $teste['preco'];
        $idade = $teste['idade'];
        $datas = $teste['datas'];

        $sql = "INSERT INTO produtos (nome,descricao,preco,idade,imagem,data_cad,apagado) VALUES 
        ('" . $nome . "','" . $descricao . "','" . $preco . "','" . $idade . "','" . $imagem . "','" . $datas . "',0)";
        $result = $this->conn->query($sql);
        if ($result == 1) {
            //echo "ok";
            return true;
        } else {
            //echo "nok";
            return false;
        }
    }

    public function deletar($teste)
    {
        $id = $teste['id'];
        $datas = $teste['datas'];
        $apagar = 1;

        $sql = "update produtos set apagado='" . $apagar . "', dt_delete='" . $datas . "' where id='" . $id . "' ";
        $result = $this->conn->query($sql);

        if ($result == 1) {
            //echo "ok";
            return true;
        } else {
            //echo "nok";
            return false;
        }
    }
    public function atualizar_cad_produto($teste)
    {   
        $id = $teste['id'];
        $nome = $teste['nome'];
        $descricao = $teste['descricao'];
        $imagem = $teste['imagem'];
        $preco = $teste['preco'];
        $idade = $teste['idade'];
        $datas = $teste['datas'];


        echo $sql = "UPDATE produtos SET nome='" . $nome . "', descricao='" . $descricao . "', preco='" . $preco . "', idade='" . $idade . "', imagem='" . $imagem . "', dt_edicao='" . $datas . "' WHERE id='" . $id . "'";
        $result = $this->conn->query($sql);
        if ($result == 1) {
            //echo "ok";
            return true;
        } else {
            //echo "nok";
            return false;
        }
    }

    public function listaratualizados1()
    {
        $sql = "select * from produtos where apagado = 0 order by data_cad desc limit 8";
        $resultado = $this->conn->query($sql);
        return $resultado;
    }
    public function listaratualizados2()
    {
        $sql = "select * from produtos where apagado = 0 order by dt_edicao desc limit 8";
        $resultado = $this->conn->query($sql);
        return $resultado;
    }
    public function contar()
    {
        $sql = "select count(*) as contador from produtos where apagado=0";
        $resultado = $this->conn->query($sql);
        return $resultado;
    }

    public function buscar_um_produto($search)
    {
        $xpto = "select * from produtos where nome like '%" . $search . "%'";
        $dados = $this->conn->query($xpto);
        return $dados;
    }

    public function pegar_produto($id)
    {
        $xpto = "select * from produtos where id = '" . $id . "' and apagado=0";
        $dados = $this->conn->query($xpto);
        return $dados;
    }

    public function listar()
    {
        $sql = "SELECT * FROM produtos WHERE apagado = 0";
        $resultado = $this->conn->query($sql);
        return $resultado;
    }
}
