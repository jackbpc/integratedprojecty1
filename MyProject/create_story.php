<?php
require_once "./etc/config.php";

try {
    $author = Author::findAll();
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
                    Image: 
                    <input type="file" name="imageUpload" id="imageUpload">
                    <span class="error"><?= error("image") ?><span>
                </p>
                <p>
                Author:
                <select name="author_id">

                    <option value="">Please choose an author...</option>"

                    <?php foreach ($author as $authors) { ?>
                        
                        <option value="[i]"  <?= chosen("authors", "[i]")  ? "selected" : "" ?>>
                        </option>
                        

                    <?php } ?>
                    
                </select>
                <span class="error"><?= error("publisher_id") ?><span>
            </p>
            <p>
                Category:
                <select name="publisher_id">
                    <option value="">Please choose a category...</option>"
                    <option value="1"  <?= chosen("category", "1")  ? "selected" : "" ?>>
                    Davis, Altenwerth and Will
                    </option>
                    <option value="2"  <?= chosen("category", "2")  ? "selected" : "" ?>>
                    Littel, Nolan and Mueller
                    </option>
                    <option value="3" <?= chosen("category", "3") ? "selected" : "" ?>>
                    Shanahan, Schoen and Collier
                    </option>
                </select>
                <span class="error"><?= error("publisher_id") ?><span>
            </p>
            <p>
                Location:
                <select name="publisher_id">
                    <option value="">Please choose a location...</option>"
                    <option value="1"  <?= chosen("category", "1")  ? "selected" : "" ?>>
                    Davis, Altenwerth and Will
                    </option>
                    <option value="2"  <?= chosen("category", "2")  ? "selected" : "" ?>>
                    Littel, Nolan and Mueller
                    </option>
                    <option value="3" <?= chosen("category", "3") ? "selected" : "" ?>>
                    Shanahan, Schoen and Collier
                    </option>
                </select>
                <span class="error"><?= error("publisher_id") ?><span>
            </p>
                <p>
                    Created at: 
                    <input type="date" name="created" id="created">
                    <span class="error"><?= error("created") ?><span>
                </p>
                <p>
                    Updated at: 
                    <input type="date" name="updated" id="updated">
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