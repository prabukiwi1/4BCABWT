let div=document.getElementById('test');
function getRandom()
{
    let str='0123456789ABCDEF';
    let color='#';
    for(i=0;i<6;i++)
    {
        color+=str[Math.floor(Math.random()*16)];
    }
    return color;
}
function change()
{
    div.style.backgroundColor=getRandom();
}
setInterval(change,3000);