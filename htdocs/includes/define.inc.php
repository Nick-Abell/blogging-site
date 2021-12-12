<?php
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-
//
// File name: 	    define.inc.php
//
// File purpose: 	This is the place to define useful global constants
//
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-
// Set Time Zone

error_reporting(0);
ini_set("display_errors", 1);

putenv("TZ=US/Eastern");

// Include files containing parts of each website page
//
define("INC_FOOTER", "includes/footer.inc.php");
define("INC_HEADER", "includes/header.inc.php");

// General defines
//


// Page titles
//

// Error messages
//
/*
define("T_400", T_BASESTEM . "Error 400");
define("T_401", T_BASESTEM . "Error 401");
define("T_402", T_BASESTEM . "Error 402");
define("T_403", T_BASESTEM . "Error 403");
define("T_404", T_BASESTEM . "Error 404");
define("T_500", T_BASESTEM . "Error 500");
*/

?>