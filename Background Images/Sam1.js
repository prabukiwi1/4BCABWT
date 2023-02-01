let images=['img1.jpeg','img2.webp','img3.jpeg','img4.jpeg','img5.jpeg','img6.jpeg'];
let id1=document.getElementById('test');
function sample()
{
    let r=Math.floor(Math.random()*6);
    id1.style.backgroundImage='url("'+images[r]+'")';
}
sample();
setInterval(sample,3000);