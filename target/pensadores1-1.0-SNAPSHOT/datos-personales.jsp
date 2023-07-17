<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="head.jsp"/>
<body style="background-color: #1c1a38;">


    <div class="container rounded-lg " >

        <div class="row justify-content-center" > 
            <div class="col-sm-5 rounded-lg mt-5" style=" background-color: #fdd306;" >

                <div class="row d-flex justify-content-center align-items-center" >
                    <img src="imagenes/usuario.png" alt="" srcset="" width="40px" height="40px" class="mr-2">
                    <h1>Datos Personales</h1>
                </div>
        
                <div class="row ">
                    <div class="col ">
                        
                        <div class="form-row mb-4 mt-2 mx-0  form-control">
                            <p class="mr-1">Nombre: </p>
                          
                             <%if(session.getAttribute("email") != null){ %>

                            <p><%= session.getAttribute("nombre") %></p>

                            <%
                            }
                            %>

                        </div>
        
                        <div class="form-row my-4 mx-0 form-control">
                            <p class="mr-1">Apellido: </p>

                            <%if(session.getAttribute("email") != null){ %>

                            <p><%= session.getAttribute("apellido") %></p>

                            <%
                                }
                            %>
                        </div>
        
                        <div class="form-row my-4 mx-0 form-control">
                            <p class="mr-1">Email: </p>
                            <%if(session.getAttribute("email") != null){ %>

                            <p><%= session.getAttribute("email") %></p>

                            <%
                                }
                            %>
                        </div>
        
                        <div class="form-row my-4 mx-0 form-control">
                            <p class="mr-1">Contraseña: </p>
                            <%if(session.getAttribute("email") != null){ %>

                            <p><%= session.getAttribute("password") %></p>

                            <%
                                }
                            %>
                        </div>
              
                    </div>
                </div>

            </div>
        </div>

            

        

    </div>











    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
</body>

</html>