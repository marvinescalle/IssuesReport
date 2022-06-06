<?php require('actions/users/signupAction.php'); ?>
<!doctype html>
<html lang="fr" dir="ltr">
<?php include 'includes/head.php'; ?>
<link rel="stylesheet" href="./assets/login.css">

  <body>
    <section>
        <div class="color"></div>
		<div class="color"></div>
		<div class="color"></div>
		<div class="box">
			<div class="square" style="--i:0"></div>
			<div class="square" style="--i:1"></div>
			<div class="square" style="--i:2"></div>
			<div class="square" style="--i:3"></div>
			<div class="square" style="--i:4"></div>
         
      
              <div class="container">
                <div class="contactForm">
                    
                    <form method="POST">

                      <?php if(isset($errorMsg)){ echo '<p>'.$errorMsg.'</p>'; } ?>

                    <h2>S'inscrire</h2>

                    <div class="formBox">
                        <div class="inputBox w50">
                            <input type="text" name="pseudo"  name="pseudo" required="required" autocomplete="off">
                            <span>Pseudo</span>
                        </div>

                        <div class="inputBox w50">
                            <input type="text"  name="lastname" required="required" autocomplete="off">
                            <span>Nom</span>
                        </div>
                        
                        <div class="inputBox w50">
                            <input type="text" name="firstname" required="required" autocomplete="off">
                            <span>Prénom</span>
                        </div>

                        <div class="inputBox w50">
                            <input type="password" name="password" required="required" autocomplete="off">
                            <span>Mot de passe</span>
                        </div>


                        <div class="inputBox w100">
                            <input type="submit" value="Envoyer" name="validate">
                        </div>
                        <p class="signup">Vous avez déjà un compte? <a href="login.php">Se connecter.</a></p>
                    </div>
                  </form>
                </div>
            </div>
        </div>
    </section>

    <div class="toggle"></div>
    <section class="navigation">
      <span style="--i:0"></span>
      <span style="--i:1"></span>
      <span style="--i:2"></span>
      <span style="--i:3"></span>

    </section>

    <script type="text/javascript">
      const navigation = document.querySelector('.navigation');
      document.querySelector('.toggle').onclick = function()
      {
        this.classList.toggle('active');
        navigation.classList.toggle('active');
      }
    </script>
  </body>
</html>