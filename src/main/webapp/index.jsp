<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html lang="es">

  <jsp:include page="head.jsp"/>

<body>

  <jsp:include page="header.jsp"/>

    <main>
      <section>

        <article>
          <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            
            
            <div class="carousel-inner position">
              <div class="filtro carousel-item active">
                <img src="imagenes/ba1.jpg" class="d-block w-100 img-fluid" alt="..." >
              </div>
              <div class=" filtro carousel-item">
                <img src="imagenes/ba2.jpg" class="d-block w-100 img-fluid" alt="..." >
              </div>
              <div class="filtro carousel-item">
                <img src="imagenes/ba3.jpg" class="d-block w-100 img-fluid" alt="...">
              </div>

              <div class="container d-flex justify-content-end align-items-end altura">
                <div class="row d-flex" >
                  <div class="texto_arriba text-right fondo">
                    <h2 class="text-light">Conf Bs As</h2>
                    <p class="text-light ">Bs As llega por primera vez a Argentina, Un evento para compartir con nuestra comunidad el conomiecimiento y experiencia de los expertos que estan creando el futuro de Internet. Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo y los oradores de primer nivel que tenemos para ti. Te esperamos!</p>
                    <a type="button" class="btn btn-outline-light" href="#formulario">Quiero ser orador!</a>
                    <%
                      if(session.getAttribute("email") != null){
                    %>
                    <a type="button" class="btn btn-success" href="comprar-tickets.jsp" >Compra tickets</a>
                    <%
                      }
                    %>
                  </div>
                </div>

              </div>
             

            </div>
            
            
            

            <button class="carousel-control-prev" type="button" data-target="#carouselExampleIndicators" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              
            </button>
            <button class="carousel-control-next" type="button" data-target="#carouselExampleIndicators" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              
            </button>
          </div>

          <%
    if(session.getAttribute("email") != null){

    %>
        <section class="text-center mb-4 mt-4">
            <h1>¡Bienvenido <span class="badge bg-warning"><%= session.getAttribute("nombre") %></span>!</h1>
        </section>
    <%
    }
    %>
          
        </article>
          

          <article>
            <div class="container">
              <div class="text-center">
                <p id="oradores" class="pb-0 mb-0">Conoce a los </p>  
                <h2>ORADORES</h2>
              </div>
              <div class="row d-flex justify-content-around">
                
                  <div class="card mt-3" style="width: 18rem;">
                    <img class="card-img-top" src="imagenes/steve.jpg" alt="Card image cap">
                    <div class="card-body">
                      <span class="badge badge-warning">JavaScript</span>
                      <span class="badge badge-info">React</span>
                      <h2>Steve Jobs</h2>
                      <p class="card-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Iure excepturi fugit, quos suscipit obcaecati aut, ex repellat commodi, sint dolorem eius optio reprehenderit praesentium nisi a illo error molestiae! Architecto.</p>
                    </div>
                  </div>
                
                
                  <div class="card mt-3" style="width: 18rem;">
                    <img class="card-img-top" src="imagenes/bill.jpg" alt="Card image cap">
                    <div class="card-body">
                      <span class="badge badge-warning">JavaScript</span>
                      <span class="badge badge-info">React</span>
                      <h2>Bill Gates</h2>
                      <p class="card-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Iure excepturi fugit, quos suscipit obcaecati aut, ex repellat commodi, sint dolorem eius optio reprehenderit praesentium nisi a illo error molestiae! Architecto.</p>
                    </div>
                  </div>
                
                
                  <div class="card mt-3" style="width: 18rem;">
                    <img class="card-img-top" src="imagenes/ada.jpeg" alt="Card image cap">
                    <div class="card-body">
                      <span class="badge badge-secondary">Negocios</span>
                      <span class="badge badge-danger">Startups</span>
                      <h2>Ada Lovelace</h2>
                      <p class="card-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Iure excepturi fugit, quos suscipit obcaecati aut, ex repellat commodi, sint dolorem eius optio reprehenderit praesentium nisi a illo error molestiae! Architecto.</p>
                    </div>
                
                  </div>
              </div>
            </div>

          </article>

          <article class="container-fluid mt-5">
            
              <div class="row border">
                <div class="col-md px-0">
                  <img src="imagenes/honolulu.jpg" class="img-fluid" alt="">
                </div>
                <div class="col-md bg-dark border-left pb-3">
                  <h2 id="lugar_fecha" class="text-light pt-5">Bs As - Octubre</h2>
                  <p class="text-white">Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur atque blanditiis modi exercitationem necessitatibus dolore quae fugit vero officiis accusamus deleniti commodi officia, in itaque suscipit neque. Iusto, nam? Accusantium, consequatur dolore in, soluta quasi excepturi incidunt, cumque perspiciatis nam libero numquam consectetur commodi expedita suscipit tempore accusamus eum ex?</p>
                  <button type="button" class="btn btn-outline-light">Conocé más</button>
                </div>
                
              </div>
            
          </article>
              
          <article>
            <div>
              <div class="text-center">
                <p id="formulario" class="mb-0 mt-4">Conviértete en un</p>
                <h2>ORADOR</h2>
                <p>Anótate como orador para dar una <abbr title="Ignite es una serie de eventos donde los oradores tienen cinco minutos para hablar sobre un tema acompañados de 20 diapositivas, de 15 segundos cada una, que avanzan automáticamente.">charla ignite</abbr>. Cuéntanos de qué quieres hablar!</p>
              </div>

              <div class="d-flex justify-content-center">
                <form style="width: 80%;">
                  <div class="form-row">
                    <div class="col">
                      <input type="text" class="form-control" placeholder="Nombre" required>
                    </div>
                    <div class="col">
                      <input type="text" class="form-control" placeholder="Apellido" required>
                    </div>
                  </div>
                  <div class="row mt-3" >

                    <div class="col">
                      <textarea class="form-control" placeholder="Sobre qué quieres hablar?" rows="3" ></textarea>
                    </div>
                    
                  </div>
                  <div class="row">
                    <div class="col">
                      <p>Recuerda incluir un título para tu charla</p>
                    </div>
                  </div>

                  <button type="submit" class="btn btn-success btn-lg btn-block mb-3" href="#">Enviar </button>

                </form>
                
              </div>

              
            </div>
          </article>

          



      </section>



      
    

    </main>
   <jsp:include page="footer.jsp"/>


    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
</body>
</html>