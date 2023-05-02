<?php
$_response2 = $DB->query('SELECT * FROM `films` WHERE `id_event` <= 12 ORDER BY `id_event` ASC');
?>


<?php foreach($_response2 as $_images):?> <!--itération avec la bdd -->
    <li 
            data-image="<?= strip_tags($_images->IMAGE_EVENT) ?>" 
            data-title="<?= strip_tags($_images->NOM_EVENT) ?>" 
            data-description="<?= strip_tags($_images->DESCRIPTION_EVENT) ?>" 
            data-dates="<?= strip_tags($_images->DATE_CREATION ) ?>"
            data-id="src_php/panier/add_panier.php?id=<?= strip_tags($_images->ID_EVENT); ?>">
                <figure class="ham">
                    <img src="<?= strip_tags($_images->IMAGE_EVENT) ?>" alt="<?= strip_tags($_images->NOM_EVENT) ?>">
                        <figcaption class="figma">
                            <h2>
                                <i class="material-icons" aria-hidden="true">
                                    pages
                                </i>
                                    Show
                            </h2>
                        </figcaption>
                       
                </figure>
        </li>
<?php endforeach; ?>

<!--<a href="accueil.php?id=$_images["id_evenement"]?>">-->