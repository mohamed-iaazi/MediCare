<%-- 
    Document   : Appointement
    Created on : 18 févr. 2025, 17:10:03
    Author     : iaazi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Appointement</title>

</head>
<style>
 .card{
    border: solid 1px rgba(52, 80, 223, 0.295);
    width: fit-content;
    height: 70px;
    border-radius: 5px;
    box-shadow: 0 0 10px 0 rgb(241, 235, 235);
   padding: 10px;
   display: flex;
   gap: 40px;
   align-items: center;
   border-bottom: #0ecfff solid 10px;

}
span{
    color: #898886;
    font-size: 12px;
    font-weight: bolder;
    
}
small{
    color: #080807;
    /* font-family: 'Courier New', Courier, monospace; */
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    padding: 10px;
}

label{
    color: #073c58;
    font-size: 12px;
}
button{
    width: 90px;
    display: block; 
    height: fit-content; 
    padding: 6px 10px;
    border-radius: 50px;
}
.ca{

    display: flex;
    flex-direction: column;
    gap: 10px;

}
section {
    display: flex;
    justify-content: space-evenly;
    flex-wrap: wrap;
    align-items: center;
    gap: 20px;
}
h1{

    text-align: center;
    color: #073c58;
}
</style>
<body>
<h1>Appointement </h1>


    <section >
        <div class="card">
            <div>
    <div class="ca">
        <span>UserName :  <small>Kamal</small> </span>
        <span></span>
       
    </div>
        
    <div class="ca">
        <span>Email : <small>Email@gmail.com</small></span>
        <span></span>
        
    </div>
    
          
        </div>
    
        <div>
            <div> <span>Status : </span></div>
            <label style="margin-left: 15px; " for="">Done</label>
            <input type="checkbox" name="Done" id="" placeholder="Done">
        </div>
    
        <button class="edit" type="button" style="background-color: #7696FF;  color: white;  border: #7696FF solid 2px;">Edit</button>
        <button class="cancel" type="button" style="background-color: white;  color: #FF970E; border: #FF970E solid 2px; ">Calcel</button>
    
      
    </div>



    <div class="card">
        <div>
<div class="ca">
    <span>UserName :  <small>Kamal</small> </span>
    <span></span>
   
</div>
    
<div class="ca">
    <span>Email : <small>Email@gmail.com</small></span>
    <span></span>
    
</div>

      
    </div>

    <div>
        <div> <span>Status : </span></div>
        <label style="margin-left: 15px; " for="">Done</label>
        <input type="checkbox" name="Done" id="" placeholder="Done">
    </div>

    <button class="edit" type="button" style="background-color: #7696FF;  color: white;  border: #7696FF solid 2px;">Edit</button>
    <button class="cancel" type="button" style="background-color: white;  color: #FF970E; border: #FF970E solid 2px; ">Calcel</button>

  
</div>
     

<div class="card">
    <div>
<div class="ca">
<span>UserName :  <small>Kamal</small> </span>
<span></span>

</div>

<div class="ca">
<span>Email : <small>Email@gmail.com</small></span>
<span></span>

</div>

  
</div>

<div>
    <div> <span>Status : </span></div>
    <label style="margin-left: 15px; " for="">Done</label>
    <input type="checkbox" name="Done" id="" placeholder="Done">
</div>

<button class="edit" type="button" style="background-color: #7696FF;  color: white;  border: #7696FF solid 2px;">Edit</button>
<button class="cancel" type="button" style="background-color: white;  color: #FF970E; border: #FF970E solid 2px; ">Calcel</button>


</div>
 
<div class="card">
    <div>
<div class="ca">
<span>UserName :  <small>Kamal</small> </span>
<span></span>

</div>

<div class="ca">
<span>Email : <small>Email@gmail.com</small></span>
<span></span>

</div>

  
</div>

<div>
    <div> <span>Status : </span></div>
    <label style="margin-left: 15px; " for="">Done</label>
    <input type="checkbox" name="Done" id="" placeholder="Done">
</div>

<button class="edit" type="button" style="background-color: #7696FF;  color: white;  border: #7696FF solid 2px;">Edit</button>
<button class="cancel" type="button" style="background-color: white;  color: #FF970E; border: #FF970E solid 2px; ">Calcel</button>


</div>
 
    </section>
    




 
   
</body>
</html>