<?php 
    require('actions/users/securityAction.php');
    require('actions/questions/myQuestionsAction.php'); 
?>
<!DOCTYPE html>
<html lang="en">
<link rel="stylesheet" href="./assets/style.css">
<?php include 'includes/head.php'; ?>
<body>
    <?php include 'includes/navbar.php'; ?>

    <br><br>
    <div class="container">

        <?php 

            while($question = $getAllMyQuestions->fetch()){
                ?>
                <div class="card">
                    <h5 class="card-header">
                        <a href="article.php?id=<?= $question['id']; ?>">
                            <?= $question['titre']; ?>
                        </a>
                    </h5>
                    <div class="card-body">
                        <!-- <a href="article.php?id=<?= $question['id']; ?>" class="btn btn-primary">Accéder à la question</a>
                        <a href="edit-question.php?id=<?= $question['id']; ?>" class="btn btn-warning">Modifier la question</a>
                        <a href="actions/questions/deleteQuestionAction.php?id=<?= $question['id']; ?>" class="btn btn-danger">Supprimer la question</a>
                    </div> -->
                        <p class="card-text">
                            <?= $question['description']; ?>
                        </p>
                        <div class="container">
                        <div class="btn"><a href="article.php?id=<?= $question['id']; ?>">Accéder à la question</a></div>
                        <div class="btn"><a href="edit-question.php?id=<?= $question['id']; ?>">Modifier la question</a></div>
                        <div class="btn"><a href="actions/questions/deleteQuestionAction.php?id=<?= $question['id']; ?>">Supprimer la question</a></div>
                    </div> 
                </div>
                <br>
                <?php
            }

        ?>

    </div>

</body>
</html>