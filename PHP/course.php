<?php
session_start();
if(isset($_SESSION['uname']))
{
    echo "<h2>Welcome &nbsp".$_SESSION['uname']."&nbsp to BCA </h2>";
    echo "<br><a href='christ.php'> <input type='button' name='home' value='home'></a>";

}
else{
    echo "<script>location.href='login.html'</script>";
}
?>