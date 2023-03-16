<?php

require_once "classes/category.php";
require_once "classes/story.php";

 try{
    $stories = Story::findAll();
 }
 catch (Exception $e)
{
     echo $e;
}

?>
<html>
    <head>
        <title>Stories</title>
        <style>
            table, th, td {
                border: 1px solid black;
            }
            table {
                width: 100%;
                border-collapse: collapse;
            }
        </style>
    </head>
    <body>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Category ID</th>
                    <th>Headline</th>
                    <th>Sub Heading</th>
                    <th>Article</th>
                    <th>Author</th>
                    <th>Published Date</th>
                    <th>Published Time</th>
                    <th>Image</th>
              
                </tr>
            </thead>
            <tbody>
                <?php foreach ($stories as $s) { ?>
                <tr>
                    <td><?= $s->id ?></td>
                    <td><?= $s->category_id ?></td>
                    <td><?= $s->headline ?></td>
                    <td><?= $s->sub_heading ?></td>
                    <td><?= $s->article ?></td>
                    <td><?= $s->author ?></td>
                    <td><?= $s->published_date ?></td>
                    <td><?= $s->published_time ?></td>
                    <td><?= $s->image ?></td>
                 
        
              
                  
                </tr>
                <?php } ?>
            </tbody>
        </table>
    </body>
</html>