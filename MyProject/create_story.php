<?php
require_once "./etc/config.php";

try {
    $authors = Author::findAll();
    $categories = Category::findAll();
    $locations = Location::findAll();
}
catch (Exception $e) {
    echo $e->getMessage();
    exit();
}
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Form</title>
        <!-- Call style sheet for flash messages -->
        <link rel="stylesheet" href="./css/styles.css">
    </head>
    <body>
    <!-- Call flash message class to display whether the user entered correct information according to the book form validator. -->
    <?php require './etc/flash_message.php'; ?>
    <!-- Layout book add form. -->
    <div class="container">    
        <div class="width-12">
        <h2>Add Story Form</h2>
            <form action="store_story.php" method="POST">
                <p>
                    Headline: 
                    <input type="text" name="headline" value="<?= old("headline") ?>">
                    <span class="error"><?= error("headline") ?><span>
                </p>
                <p>
                    Article: 
                    <input type="text" name="article" value="<?= old("article") ?>">
                    <span class="error"><?= error("article") ?><span>
                </p>
                <p>
                    Image URL: 
                    <input type="text" name="img_url" id="img_url">
                    <span class="error"><?= error("img_url") ?><span>
                </p>
                <p>
                Author:
                <select name="author_id">

                    <option value="">Please choose an author...</option>"

                    <?php foreach ($authors as $author) { ?>
                        
                        <option value= <?= $author->id ?>  <?= chosen("author_id",$author->id )  ? "selected" : "" ?>>
                            <?= $author->first_name ?>
                        </option>
                        

                    <?php } ?>
                    
                </select>
                <span class="error"><?= error("author_id") ?><span>
            </p>
            <p>
                Category:
                <select name="category_id">

                    <option value="">Please choose an category...</option>"

                    <?php foreach ($categories as $category) { ?>
                        
                        <option value= <?= $category->id ?>  <?= chosen("category_id",$category->id )  ? "selected" : "" ?>>
                            <?= $category->name ?>
                        </option>
                        

                    <?php } ?>
                    
                </select>
                <span class="error"><?= error("category_id") ?><span>
            </p>
            <p>
                Location:
                <select name="location_id">

                    <option value="">Please choose a location...</option>"

                    <?php foreach ($locations as $location) { ?>
                        
                        <option value= <?= $location->id ?>  <?= chosen("location_id",$location->id )  ? "selected" : "" ?>>
                            <?= $location->name ?>
                        </option>
                        

                    <?php } ?>
                    
                </select>
                <span class="error"><?= error("location_id") ?><span>
            </p>
                <p>
                    Created at: 
                    <input type="text" name="created" id="created">
                    <span class="error"><?= error("created") ?><span>
                </p>
                <p>
                    Updated at: 
                    <input type="text" name="updated" id="updated">
                    <span class="error"><?= error("updated") ?><span>
                </p>
                <button type="submit">Add</button>
                <a href="index.php">Back</a>
            </form>
            </div>
    </div>
    </body>
</html>
<?php
if (array_key_exists("form-data", $_SESSION)) {
    unset($_SESSION["form-data"]);
}
if (array_key_exists("form-errors", $_SESSION)) {
    unset($_SESSION["form-errors"]);
}
?>