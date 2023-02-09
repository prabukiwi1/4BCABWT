function test(event)
{
    let code=event.which;
    if(code>47&&code<58)
    {
        alert('Digits not allowed')
        return false
    }
    else{
        return true
    }
}
function validate()
{
    let uname=document.getElementById('uname');
    let pass=document.getElementById('pass');
    if(uname.value.trim()=='')
    {
    document.getElementById('uname').style.border='solid 3px red'
    document.getElementById('lname').style.visibility='visible'
    return false
    }
    else{
        document.getElementById('uname').style.border=''
    document.getElementById('lname').style.visibility='hidden'
    }
    if(pass.value.trim()=='')
    {
    document.getElementById('pass').style.border='solid 3px red'
    document.getElementById('lpname').style.visibility='visible'
    return false
    }
    else{
        document.getElementById('pass').style.border=''
    document.getElementById('lpname').style.visibility='hidden'
    }
    if(pass.value.trim().length<5)
    {
    document.getElementById('pass').style.border='solid 3px red'
    document.getElementById('ppname').style.visibility='visible'
    return false
    }
    else{
        document.getElementById('pass').style.border=''
    document.getElementById('ppname').style.visibility='hidden'
    }
    return true
}