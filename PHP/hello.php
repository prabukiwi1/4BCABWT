<?php
const BR='<br \>';
mul(10,30);
function mul($a,$b)
{
echo $a*$b;
}
echo BR;
function test(array $info,$color='green')
{
    echo "<table bgcolor='$color' border='2'"
    ."bordercolor='black',cellspacing='2'"
    ."cellspadding='0'>";
foreach($info as $key=>$value){
    echo '<tr><td>'.ucwords($key).'</td><td>'.$value.'</td></tr>';

}
}
$my_info=array('name'=>'Tanila','age'=>'22','designation'=>'Developer');
test($my_info);
$sample='test';
echo BR;
$sample($my_info,'pink');
function recur($a)
{
    if($a<1)
    {
        return;
    }
    else{
        echo "$a\n";
        recur($a-1);
        echo "$a\n";
    }
}
recur(3);
?>