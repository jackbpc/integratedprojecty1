<?php
class StoryFormValidator extends FormValidator {
    public function __construct($data=[]) {
        parent::__construct($data);
    }

    public function validate() {

        if (!$this->isPresent("headline")) {
            $this->errors["headline"] = "Please enter a headline.";
        }
        else if (!$this->minLength("headline", 20)) {
            $this->errors["headline"] = "Headline must be at least 20 characters.";
        }

        if (!$this->isPresent("article")) {
            $this->errors["article"] = "Please enter an article.";
        }
        else if (!$this->minLength("article", 100)) {
            $this->errors["article"] = "Article must be longer than 100 characters.";
        }
        
        if(!$this->isPresent("img_url")){
            $this->errors["img_url"] = "Please provide the image URL.";
        }

        if(!$this->isPresent("author_id")){
            $this->errors["author_id"] = "Please choose the author.";
        }

        if(!$this->isPresent("category_id")){
            $this->errors["category_id"] = "Please choose the category.";
        }

        if(!$this->isPresent("location_id")){
            $this->errors["location_id"] = "Please choose the location.";
        }

        if(!$this->isPresent("created")){
            $this->errors["created"] = "Please choose an creation time and date.";
        }
        if(!$this->isPresent("updated")){
            $this->errors["updated"] = "Please choose an update time and date.";
        }

        return count($this->errors) === 0;
    }
}

?>