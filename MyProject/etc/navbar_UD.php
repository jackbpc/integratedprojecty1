<?php

try {
    $categories = Category::findAll();
}
catch (Exception $e) {
    echo $e->getMessage();
    exit();
}
?>
<div class="navbarOverall">
<div class="container">
    <div class="width-12">
<ul class="navbar">
    <!-- <div class="homeTopics"> -->
    <li><a href="index.php">Home</a></li>
    <?php foreach ($categories as $c) { ?>
        <li><a href="category.php?id=<?= $c->id ?>"><?= $c->name ?></a></li>
        <?php }
 ?>

<div class="CRUD">
    <li><a href="">Edit story</a></li>
    <li><a href="">Delete story</a></li>
 </div>
</ul>
    </div>
    </div>
    </div>
