
document.getElementById("b6").addEventListener("click",redirect_my_project);
document.getElementById("b5").addEventListener("click",redirect_project_list);
document.getElementById("b1").addEventListener("click",redirect_project);
document.getElementById("b2").addEventListener("click",redirect_main);
document.getElementById("b3").addEventListener("click",redirect_project);



function redirect_project(){
  document.getElementById("frame").innerHTML='<iframe src="add-project/index.jsp"  style="border:none; width:100%;" height="870" scrolling="no" title="description"></iframe>';
   
}


function redirect_main(){
  document.getElementById("frame").innerHTML='<iframe  src="main/main.jsp"  seamless="seamless" style="border:none;  display:block; width:100%; height:145vh;"   scrolling="no" title="description"></iframe>';
   
}

function redirect_project_list(){
  document.getElementById("frame").innerHTML='<iframe id="frame" src="project_list/index.jsp"  seamless="seamless" style="border:none;  display:block; width:100%; height:145vh;"    title="description"></iframe>';
   
}

function redirect_my_project(){
  document.getElementById("frame").innerHTML='<iframe id="frame" src="my_project/index.jsp"  seamless="seamless" style="border:none;  display:block; width:100%; height:140vh;"    title="description"></iframe>';
   
}