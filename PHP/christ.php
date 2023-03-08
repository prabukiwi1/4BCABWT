<?php
$uname='tamirra';
$pwd='123';
session_start();
if(isset($_SESSION['uname'])){
    echo "<h1>Welcome &nbsp".$_SESSION['uname']."&nbsp to christ university</h1>";
    echo "<a href='course.php'>Course</a><br>";
    echo "<br><a href='logout.php'><input type='button' name='logout' value='logout'></a>";
}
else 
{
    if($_POST['uname']==$uname && $_POST['pwd']==$pwd)
    {
        $_SESSION['uname']=$uname;
        echo "<script>location.href='christ.php'</script>";
    }
    else{
        echo "<script>alert('invalid username or password')</script>";
        echo "<script>location.href='login.html'</script>";
    }
}
?>