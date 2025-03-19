<?php
class StoryFormValidator extends FormValidator {
    public function __construct($data=[]) {
        parent::__construct($data);
    }

    public function validate() {

        if (!$this->isPresent("headline")) {
            $this->errors["headline"] = "Please enter a headline.";
        }
        else if (!$this->minLength("title", 30)) {
            $this->errors["headline"] = "Headline must be at least 30 characters.";
        }

        if (!$this->isPresent("article")) {
            $this->errors["article"] = "Please enter an article.";
        }
        else if (!$this->minLength("article", 100)) {
            $this->errors["article"] = "Article must be at least 100 characters.";
        }

        $validPublishers = ["1", "2", "3"];

        if(!$this->isPresent("publisher_id")){
            $this->errors["publisher_id"] = "Please choose the publisher ID.";
        }
        else if(!$this->isElement("publisher_id", $validPublishers)){
            $this->errors["publisher_id"] = "Please choose a valid Publisher ID (1 - 3)";
        }

        if(!$this->isPresent("created")){
            $this->errors["created"] = "Please choose a date.";
        }
        if(!$this->isPresent("updated")){
            $this->errors["updated"] = "Please choose a date.";
        }

        return count($this->errors) === 0;
    }
    
}
?>