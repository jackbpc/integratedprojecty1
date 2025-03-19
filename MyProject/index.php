<?php
require_once "./etc/config.php";
// Test?
try {
    // $stories = Story::findAll();
    // $stories = Story::findAll($options = array('limit' => 2));
    // $stories = Story::findAll($options = array('limit' => 2, 'offset' => 2));

    $authorId = 1;
    // $stories = Story::findByAuthor($authorId);
    // $stories = Story::findByAuthor($authorId, $options = array('limit' => 3));

    $categoryId = 1;
    // $stories = Story::findByCategory($categoryId);
    // $stories = Story::findByCategory($categoryId, $options = array('limit' => 3));
    $mainStory = Story::findByCategory($categoryId, $options = array('limit' => 1, 'offset' => 0));
    $secondStory = Story::findByCategory($categoryId, $options = array('limit' => 1, 'offset' => 2));
    $horizontalStories = Story::findByCategory($categoryId, $options = array('limit' => 2, 'offset' => 3));

    $categoryId = 2;
    // $stories = Story::findByCategory($categoryId);
    // $stories = Story::findByCategory($categoryId, $options = array('limit' => 3));
    $cat2stories = Story::findByCategory($categoryId, $options = array('limit' => 4, 'offset' => 0));
    // $locationId = 1;
    // $stories = Story::findByLocation($locationId);
    // $stories = Story::findByLocation($locationId, $options = array('limit' => 3));
    // $stories = Story::findByLocation($locationId, $options = array('limit' => 4, 'offset' => 2));
}
catch (Exception $e) {
    echo $e->getMessage();
    exit();
}
?>
<html>
    <head>
        <title>Stories</title>

    <link rel="stylesheet" href="css/all.min.css">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/grid.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/fonts.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&family=Playfair+Display:ital,wght@0,400..900;1,400..900&family=Roboto:ital,wght@0,100..900;1,100..900&display=swap"rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&family=Playfair+Display:ital,wght@0,400..900;1,400..900&family=Roboto:ital,wght@0,100..900;1,100..900&display=swap"
        rel="stylesheet">
    </head>

    <body>
        <?php require_once "./etc/navbar_C.php"; ?>
        <?php require_once "./etc/flash_message.php"; ?>
        <!--Row 1 starts--->
        <div class="container">

            <?php foreach ($mainStory as $s) { ?>

            <div class="width-9 mediumVerticalStory">
                
                <div class="content">
                    <img src="<?= $s->img_url?>" />
                    <h3><a href="view_story.php?id=<?= $s->id ?>"><?= $s->headline ?></a></h3>
                    <!-- <a href="edit_story.php?id=<?= $story->id ?>">Edit</a>
                    <form class="form-delete" action="delete_story.php" method="post"> -->
                </div>

                <div class="topicTime">
                    
                    <p class="topicPolitics"><?= Category::findById($s->category_id)->name ?></p>
                    <p class="seperator">|</p>
                    <p ><?= $s->created_at ?></p>
                    
                </div>
                
            </div>
            
            <?php } ?>

            <?php foreach ($secondStory as $s) { ?>

<div class="width-3 smallVerticalStory">
    
    <div class="content">
        <img src="<?= $s->img_url?>" />
        <h3><a href="view_story.php?id=<?= $s->id ?>"><?= $s->headline ?></a></h3>
        <p><?= substr($s->article, 0, 300) ?></p>
        <p><?= Author::findById($s->author_id)->first_name . " " . Author::findById($s->author_id)->last_name ?></p>
    </div>

    <div class="topicTime">
        
        <p class="topicPolitics"><?= Category::findById($s->category_id)->name ?></p>
        <p class="seperator">|</p>
        <p ><?= $s->created_at ?></p>
        
    </div>
    
</div>

<?php foreach ($horizontalStories as $s) { ?>
      
<div class="width-6 mediumHorizontalStory">
            <div class="left">
                <img src="<?= $s->img_url?>">
            </div>
            <div class="right">
            <h3><a href="view_story.php?id=<?= $s->id ?>"><?= $s->headline ?></a></h3>
            <p class="topic"><?= Category::findById($s->category_id)->name ?></p>
            </div>
        </div>



<?php } ?>

<?php } ?>
        </div>    
        <!--Row 1 ends--->      
        <div class="container">

            <?php foreach ($cat2stories as $s) { ?>

                <div class="width-3 smallBasicStory">
                    
                    <div class="content">
                        <img src="<?= $s->img_url?>" />
                        <h3><a href="view_story.php?id=<?= $s->id ?>"><?= $s->headline ?></a></h3>
                    </div>

                    <div class="topicTime">
                        
                        <p class="topicPolitics"><?= Category::findById($s->category_id)->name ?></p>
                        <p class="seperator">|</p>
                        <p ><?= $s->created_at ?></p>
                        
                    </div>
                    
                </div>
            
            <?php } ?>
        </div>        
    </body>
</html>