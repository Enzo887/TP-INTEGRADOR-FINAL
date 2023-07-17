<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <jsp:include page="head.jsp"/>
<body>
    
  <jsp:include page="header.jsp"/>


        <main>

       
          

          <article>
          <div class="container">
            
            <div class="row d-flex justify-content-center ml-1">
              
                <div class="card mt-3 mr-4 border-primary" style="width: 15rem;">

                  <div class="card-body text-center ">
                    <h2>Estudiante</h2>
                    <p class="card-text">Tiene un descuento</p>
                    <p class="font-weight-bold">80%</p>
                    <p class="text-muted">*presentar documentación</p>
                  </div>
                </div>
              
              
                <div class="card mt-3 mr-4 border-info" style="width: 15rem;">
                  
                    <div class="card-body text-center ">
                      <h2>Trainee</h2>
                      <p class="card-text">Tiene un descuento</p>
                      <p class="font-weight-bold">50%</p>
                      <p class="text-muted">*presentar documentación</p>
                    </div>
                  </div>
              
              
                  <div class="card mt-3 mr-4 border-warning" style="width: 15rem;">
                  
                    <div class="card-body text-center">
                      <h2>Junior</h2>
                      <p class="card-text">Tiene un descuento</p>
                      <p class="font-weight-bold">15%</p>
                      <p class="text-muted">*presentar documentación</p>
                    </div>
                    
                  </div>
              
                </div>
            </div>
          </div>

          </article>


         <article>
                <div>
                  <div class="text-center">
                    <p id="formulario" class="mb-0 mt-">VENTA</p>
                    <h2>VALOR DE TICKET $200</h2>
                   
                  </div>
    
                  <div class="d-flex justify-content-center">
                    <form class="grosor" id="form">
                      <div class="form-row">

                        <div class="col">
                          <input type="text" class="form-control" placeholder="Nombre" id="name">
                        </div>

                        <div class="col">
                          <input type="text" class="form-control" placeholder="Apellido" id="surname">
                        </div>

                      </div>

                      <div class="form-row mt-3">
                        <div class="col">
                            <input type="text" class="form-control" placeholder="Correo" id="email">
                          </div>
                      </div>

                      <div class="form-row mt-3">

                        <div class="col">
                            <label>Cantidad</label>
                            <input type="number" class="form-control" placeholder="Cantidad" id="cant">
                        </div>

                        <div class="col">
                            <label>Categoria</label>
                            <select class="custom-select text-muted" id="categoria">
                                <option value="0.80" id="estudiante">Estudiante</option>
                                <option value="0.50" id="trainee">Trainee</option>
                                <option value="0.15" id="junior">Junior</option>
                                
                              </select>
                        </div>

                      </div>

                      

                     
                      
                      
                      

                      
                      <div class="form-row my-4 mx-0 form-control bg-info" >
                        
                        <div class="col d-flex justify-content-start text-dark" >
                            <p class="m-0 "> Total a Pagar: $</p>
                            
                            <p id="precio"></p>
              
                        </div>

                          
                       
                      </div> 
                      
                    
                      
                      <div class="row">
                        
                        <div class="col">
                            <button type="reset" class="btn btn-success btn-lg btn-block mb-3" id="borrar">Borrar </button>
                        </div>

                        <div class="col">
                            <button type="submit" class="btn btn-success btn-lg btn-block mb-3" id="resumen">Resumen </button></div>
                        </div>
    
                    </form>
                    
                  </div>
    
                  
                </div>
            </article>


         </main>


         <jsp:include page="footer.jsp"/>


    <script src="js/comprar-tickets.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>

</body>
</html>