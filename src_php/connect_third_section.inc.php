<?php
$_response3 = $DB->query('SELECT * FROM `TOP_TEN` ORDER BY `ID_TOP` ASC');
?>

<?php foreach($_response3 as $_images):?> <!--itération avec la bdd -->
    <li 
        data-video="<?= strip_tags($_images->VIDEO_TOP) ?>" 
        data-title="<?= strip_tags($_images->NOM_TOP) ?>" 
        data-description="<?= strip_tags($_images->PRESENTATION_TOP) ?>" 
        data-dates="<?= strip_tags($_images->DATE_TOP) ?>">
            <figure class="ham">
                <img src="<?= strip_tags($_images->IMAGE_TOP) ?>" alt="<?= strip_tags($_images->NOM_TOP) ?>">
                    <figcaption class="figma">
                        <h2>
                            <i class="fas fa-play-circle" aria-hidden="true"></i>
                            Play    
                        </h2>
                    </figcaption>
                    
            </figure>
    </li>
<?php endforeach; ?>
