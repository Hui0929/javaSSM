var arr=new Array();
  arr[0]="./images/img1.jpg";    //杩欓噷鏀惧浘鐗囪矾寰�
arr[1]="./images/img2.jpg";
arr[2]="./images/img3.jpg";
arr[3]="./images/img4.jpg";
arr[4]="./images/img5.jpg";
var i=0;
function image()
{
var ima=document.getElementById("image");
ima.src=arr[i];
i++;
if(i==5)
   i=0
setTimeout("image()",2000) 

}
