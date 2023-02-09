function validate()
{
    let name=document.getElementById('name').value;
    let phone=document.getElementById('phone').value;
    let regx1=/christ-/;
    let regx2=/^[6-9]\d{9}$/;
    if(regx1.test(name))
    {
document.getElementById('lname').innerHTML="Valid";
document.getElementById('lname').style.visibility='visible';
document.getElementById('lname').style.color='green'
    }
    else{
        document.getElementById('lname').innerHTML="InValid";
document.getElementById('lname').style.visibility='visible';
document.getElementById('lname').style.color='green'

    }
    if(regx2.test(phone))
    {
document.getElementById('lphone').innerHTML="Valid";
document.getElementById('lphone').style.visibility='visible';
document.getElementById('lphone').style.color='green'
    }
    else{
        document.getElementById('lphone').innerHTML="InValid";
document.getElementById('lphone').style.visibility='visible';
document.getElementById('lphone').style.color='green'

    }
}