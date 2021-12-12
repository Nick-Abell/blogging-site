<?php
require_once('includes/define.inc.php');
?>


<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="css/styles.css"/>
<script src="/js/script.js"></script>
<style>
body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
</style>
<body class="w3-light-grey">

<?php require_once(INC_HEADER);?>

<?php
/
$blogdb = mysqli_connect("localhost:3307", "root", "", "cs3140database");
 
?>

<?php 






$pctQuery = "SELECT *, (select count(*) from comments where posts.pID = comments.cpID) as num, DATE(posts.pdateposted) as date FROM posts order by (select count(cpID) as num from comments where posts.pID=comments.cpID) desc";

$pcTable = $blogdb->query($pctQuery);

if (!$pcTable) {
	die("Busted code -->  $blogdb->errno");
}


$i = 0;
$table[] = 0;
while ($rtable = $pcTable->fetch_assoc()) {
	$table[] = $rtable;
}
echo count($table);


?>

<div class="w3-content" style="max-width:1400px">


<!-- Grid -->
<div class="w3-row">

<!-- Blog entries -->
<div class="w3-col l8 s12">
  <!-- Blog entry -->
  <div class="w3-card-4 w3-margin w3-white">
	<?php echo "<img src=\"images/" . $table[5]["pheading"] . ".jpg\" alt=\"animal\" style=\"width:100%\">"; ?>
    <div class="w3-container">
      <h3><b> 
	  <?php echo $table[5]["pheading"]; ?> 
	  </b></h3>
      <h5>
	  <?php echo $table[5]["psubheading"]; ?>
	  <span class="w3-opacity"><?php echo $table[5]["date"] ?></span></h5>
    </div>

    <div class="w3-container">
      <p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent tincidunt sed
        tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
      <div class="w3-row">
        <div class="w3-col m8 s12">
		  <p><form method="get" action="blogpost.php">
		  <?php echo "<button type=\"submit\" name=\"postid\" value=" . $table[5]["pID"] . " class=\"w3-button w3-padding-large w3-white w3-border\">"; ?>
		  
		  <a><b> READ MORE &raquo;</b></a> </button></form></p>
        </div>
        <div class="w3-col m4 w3-hide-small">
          <p><span class="w3-padding-large w3-right"><b>Comments &nbsp;</b> <span class="w3-tag"><?php echo $table[5]["num"]; ?></span></span></p>
        </div>
      </div>
    </div>
  </div>
  <hr>

  <!-- Blog entry -->
<div class="w3-card-4 w3-margin w3-white">
	<?php echo "<img src=\"images/" . $table[6]["pheading"] . ".jpg\" alt=\"animal\" style=\"width:100%\">"; ?>
    <div class="w3-container">
      <h3><b> 
	  <?php echo $table[6]["pheading"]; ?> 
	  </b></h3>
      <h5>
	  <?php echo $table[6]["psubheading"]; ?>
	  <span class="w3-opacity"><?php echo $table[6]["date"] ?></span></h5>
    </div>

    <div class="w3-container">
      <p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent tincidunt sed
        tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
      <div class="w3-row">
        <div class="w3-col m8 s12">
		  <p><form method="get" action="blogpost.php">
		  <?php echo "<button type=\"submit\" name=\"postid\" value=" . $table[6]["pID"] . " class=\"w3-button w3-padding-large w3-white w3-border\">"; ?>
		  <a><b> READ MORE &raquo;</b></a> </button></form></p>
        </div>
        <div class="w3-col m4 w3-hide-small">
          <p><span class="w3-padding-large w3-right"><b>Comments &nbsp;</b> <span class="w3-tag"><?php echo $table[6]["num"]; ?></span></span></p>
        </div>
      </div>
    </div>
  </div>
<!-- END BLOG ENTRIES -->
</div>

<!-- Introduction menu -->
<div class="w3-col l4">
  <!-- About Card -->
  <div class="w3-card w3-margin w3-margin-top">
  <img src="images/deer.jpg" style="width:100%">
    <div class="w3-container w3-white">
      <h4><b>Nick Abell</b></h4>
      <p>Just me, myself and I, exploring the universe of uknownment. I have a heart of love and a interest of lorem ipsum and mauris neque quam blog. I want to share my world with you.</p>
    </div>
  </div><hr>
  
  <!-- Posts -->
  <div class="w3-card w3-margin">
    <div class="w3-container w3-padding">
      <h4>Popular Posts</h4>
    </div>
    <ul class="w3-ul w3-hoverable w3-white">
	<form method="get" action="blogpost.php">
      <li class="w3-padding-16">
		<?php echo "<img src=\"images/" . $table[1]["pheading"] . ".jpg\" alt=\"animal\" class=\"w3-left w3-margin-right\" style=\"width:50px\">"; ?>
        <span class="w3-large"><?php echo $table[1]["pheading"]; ?></span><br>
        <span><?php echo $table[1]["psubheading"]; ?></span>
		<?php echo "<button type=\"submit\" name=\"postid\" value=" . $table[1]["pID"] . " class=\"pop-post-button\">"; ?> READ MORE &raquo; </button>
      </li>
      <li class="w3-padding-16">
       	<?php echo "<img src=\"images/" . $table[2]["pheading"] . ".jpg\" alt=\"animal\" class=\"w3-left w3-margin-right\" style=\"width:50px\">"; ?>
        <span class="w3-large"><?php echo $table[2]["pheading"]; ?></span><br>
        <span><?php echo $table[2]["psubheading"]; ?></span>
		<?php echo "<button type=\"submit\" name=\"postid\" value=" . $table[2]["pID"] . " class=\"pop-post-button\">"; ?> READ MORE &raquo; </button>
      </li> 
      <li class="w3-padding-16">
      	<?php echo "<img src=\"images/" . $table[3]["pheading"] . ".jpg\" alt=\"animal\" class=\"w3-left w3-margin-right\" style=\"width:50px\">"; ?>
        <span class="w3-large"><?php echo $table[3]["pheading"]; ?></span><br>
        <span><?php echo $table[3]["psubheading"]; ?></span>
		<?php echo "<button type=\"submit\" name=\"postid\" value=" . $table[3]["pID"] . " class=\"pop-post-button\">"; ?> READ MORE &raquo; </button>
      </li>   
      <li class="w3-padding-16 w3-hide-medium w3-hide-small">
		<?php echo "<img src=\"images/" . $table[4]["pheading"] . ".jpg\" alt=\"animal\" class=\"w3-left w3-margin-right\" style=\"width:50px\">"; ?>
        <span class="w3-large"><?php echo $table[4]["pheading"]; ?></span><br>
        <span><?php echo $table[4]["psubheading"]; ?></span>
		<?php echo "<button type=\"submit\" name=\"postid\" value=" . $table[4]["pID"] . " class=\"pop-post-button\">"; ?> READ MORE &raquo; </button>
      </li> 
		</form>
    </ul>
  </div>
  
<!-- END Introduction Menu -->
</div>

<!-- END GRID -->
</div><br>

<!-- END w3-content -->
</div>

<!-- Footer -->
<?php require_once(INC_FOOTER);?>

</body>
</html>