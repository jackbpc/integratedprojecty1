<?php
require_once "./etc/config.php";

try {
    if (session_status() === PHP_SESSION_NONE) {
        session_start();
    }
    if ($_SERVER["REQUEST_METHOD"] !== "POST") {
        throw new Exception("Invalid request method");
    }
    $validator = new StoryFormValidator($_POST);
    $valid = $validator->validate();
    if ($valid) {
        $data = $validator->data();
        $story = new Story($data);
        $story->save();
        $_SESSION['flash'] = [
            'message' => 'Story created successfully',
            'type' => 'success'
        ];
        redirect("index.php");
    }
    else {
        $errors = $validator->errors();
        $_SESSION["form-data"] =  $_POST;
        $_SESSION["form-errors"] = $errors;
        $_SESSION['flash'] = [
            'message' => 'Error creating story',
            'type' => 'danger'
        ];
        redirect("create_story.php");
    }
}
catch (Exception $ex) {
    echo $ex->getMessage();
    exit();
}
?>