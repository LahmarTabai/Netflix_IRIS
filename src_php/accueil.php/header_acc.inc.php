<header>
        <nav  class="gauche">
            <ul class="parent">
                <li><img src="./asset/Netflix_logo_Acceuil.png" alt=""></li>
                <li><button  class="toggle"><i class="fas fa-bars ouvrir" aria-hidden="true"></i></button></li>
            </ul>

            <ul class="onglets">
                <li><a href="#series">Séries TV</a></li>
                <li><a href="#films">Films</a></li>
                <li><a href="#programmes">Programmes originaux</a></li>
                <li><a href="./history.php"> <i class="fas fa-shopping-basket"> </i> Panier</a></li>
                <li><a href="./src_php/profil_user_php/profil_user.php"> <i class="fa fa-user" aria-hidden="true"> </i> Profile</a></li>
                <li><a href="user_logout.php"><i id="terr" class="fa fa-sign-out" aria-hidden="true"></i> Logout</a></li>
                <?php
                $prson = $_SESSION['firstname'];
                ?>
                <li id="compte"><code>Wellcome <?= $prson; ?></code></li>
            </ul>
        </nav>
</header>