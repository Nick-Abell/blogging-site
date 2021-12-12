<?php
require_once('includes/define.inc.php');
?>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="js/comment.js"></script>
<?php

$blog = mysqli_connect("localhost:3307", "root", "", "cs3140database");

?>
<?php 

$pctQuery = "SELECT *, (select count(*) from comments where posts.pID = comments.cpID) as num, DATE(posts.pdateposted) as date FROM posts order by (select count(cpID) as num from comments where posts.pID=comments.cpID) desc";

$pcTable = $blog->query($pctQuery);

if (!$pcTable) {
	die("Busted code -->  $blogdb->errno");
}

$table[] = 0;
while ($rtable = $pcTable->fetch_assoc()) {
	$table[] = $rtable;
}
?>

<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="css/styles.css"/>
<style>
body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
</style>
<body class="w3-light-grey">

<?php require_once(INC_HEADER);?>

<?php 
//$_GET['postid'] = 1;
$id = $_GET['postid'];

$query = "SELECT *,DATE(posts.pdateposted) as date FROM posts WHERE pID=" . $id;

$heading = $blog->query($query);

if ($head = $heading->fetch_assoc()) {

$title = "$head[pheading]";
$subtitle = "$head[psubheading]";
$content = "$head[pcontent]";
$image = "<img src=\"images/" . $head["pheading"] . ".jpg\" alt=\"animal\" style=\"width:100%\">";
$date = "$head[date]";
}

$pctQuery = "SELECT *, (select count(*) from comments where posts.pID = comments.cpID) as num, DATE(posts.pdateposted) as date FROM posts order by (select count(cpID) as num from comments where posts.pID=comments.cpID) desc";




?>


<div class="w3-content" style="max-width:1400px">


<!-- Grid -->
<div class="w3-row">

<!-- Blog entries -->
<div class="w3-col l8 s12">

  <!-- Blog entry -->
  <div id="mainPost" class="w3-card-4 w3-margin w3-white">
   <?php
  
  echo $image;
  ?>
    <div class="w3-container">
      <h3><b id="blogtitle">
	  <?php echo $title; ?></b></h3>
    <?php
	echo "<h5>" . $subtitle . ", <span class=\"w3-opacity\">" . $date . "</span></h5>";
	?>  
    </div>

    <div class="w3-container">
      <p>
	  <?php 
	  
	  echo $content;
	  
	  ?>
	  </p>
	  <hr>
      <div class="w3-row">
        <div class="w3-col m4 w3-hide-small">
          <p><span class="w3-padding-large w3-right"><b>Comments &nbsp;</b> <span class="w3-tag">0</span><span>
		  
		  <button type="button" id="newComment">Write Comment</button>
		  
		  </span></p>
        </div>
		<?php 
		$cquery = "SELECT * FROM comments WHERE cpID=" . $id;
	$comments = $blog->query($cquery);
		if (!$comments) {
			die("Busted code -->  $blog->errno");
		}
	while ($comment = $comments->fetch_assoc()) {
		$commentarray[] = $comment;
	}
		
		if ( (isset($_GET['username'])) AND (isset($_GET['name'])) AND  (isset($_GET['email'])) AND  (isset($_GET['content'])) ){
			$uname = ($_GET['username']);
			$name = ($_GET['name']);
			$cemail = ($_GET['email']);
			$comcontent = ($_GET['content']);
			$dposted = date_create();
		$posted = $dposted->format('Y-m-d H:i:s');
		
		$acQuery = "INSERT INTO comments (cpID, ccomment, cauthor, cdateposted, capproved, cusername, crevdate) VALUES ($id, '$comcontent' ,'$name' , '$cemail' , $posted, 0, '$uname', 2021-12-10 18:59:02);";
		//echo $acQuery;
		$newComIn = $blog->query($acQuery);
		
		mail("nabell@bgsu.edu", "New comment", "A new comment has been added to post $id");
		}
		?>
      </div>
    </div>
  </div>
  <?php
	
	//print_r($commentarray);
	foreach ($commentarray as $c) {
		$newComment = 
		"<div class=\"w3-card-4 w3-margin w3-white\">
   <div class=\"w3-container comment\">
   <h6>" . $c["cusername"] . "<br>" . $c["cauthor"] . "<br>" . $c["cauthemail"] . "<br>" . $c["cdateposted"] . "</h6> <hr>
   <p>". $c["ccomment"] ."</p>
   </div>
   </div>";
		echo $newComment;
	}
  ?>
  
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