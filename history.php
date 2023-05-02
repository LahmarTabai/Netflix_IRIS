<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My History</title>
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./css/history.css">
</head>
<?php 
try {
$_pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
$_bdd = new PDO('mysql:host=localhost;
                dbname=netflix', 
                'root', '',
                array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',$_pdo_options));
      
                // récupération du mail :

        $_mail_user  = $_SESSION['mail'];

        $_response = $_bdd->query("SELECT CL.prenom_client, E.nom_event, C.date_consultation, E.image_event, E.id_event, C.id_client 
                                    FROM `client` AS CL 
                                    INNER JOIN `consulter` AS C ON (CL.id_client = C.id_client) 
                                    INNER JOIN `films` AS E ON (E.id_event = C.id_event) 
                                    WHERE CL.mail_client = '{$_mail_user}' ORDER BY C.date_consultation DESC");
        
        // recupération de l'id du client et le sauvegarder dans une variable de session :

        $res = $_bdd->query("SELECT `id_client` FROM `client` WHERE `mail_client` = '{$_mail_user}'");

        $test = $res->fetch();
        $_elf = (int) $test[0];
        

        $_SESSION['id_client'] = $_elf;
        


        $number = $_response->rowCount();
                
               
} catch(PDOException $e) {
    die('Erreur de BDD'.$e->getMessage());
} 
?>
<body>

    <header>
        <h1><code>You have <?= $number ?> events in your history</code> </h1>
    </header>

    <main>
<!--itération avec la bdd -->
<ul>
<?php foreach($_response as $_images):?> 
    <li>
                <figure>
                    <img src="<?= strip_tags($_images['image_event']) ?>" alt="<?= strip_tags($_images['nom_event']) ?>">
                        <figcaption>
                            <h2><?= strip_tags($_images['nom_event']) ?></h2>
                            <a class="delPanier" href="Delete_history.php?id=<?= strip_tags($_images['id_event'])?>">Annuler</a>
                        </figcaption>                
                </figure>
</li>
<?php endforeach; ?>
</ul>
    </main>
    
    <footer>

    </footer>

    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="./js/history.js"></script>
</body>
</html>

