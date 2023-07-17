<%@ page contentType="text/html;charset=UTF-8" %>
<header>
      
    <nav class="navbar navbar-expand-lg navbar-light bg-dark px-5">
      <img src="imagenes/codoacodo.png" class="img-fluid" width="100px" height="100px" alt="Codo a Codo">
      <a class="navbar-brand font-weight-bolder text-light lead " href="index.jsp">Conf Bs As</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav ml-auto mt-2 mt-lg-0">
          <a class="nav-link active text-light lead" href="index.jsp">La conferencia<span class="sr-only">(current)</span></a>
          <a class="nav-link text-white-50 bg-dark rounded-pill lead" href="index.jsp#oradores">Los oradores</a>
          <a class="nav-link text-white-50 bg-dark rounded-pill lead" href="index.jsp#lugar_fecha">El lugar y la fecha</a>
          <a class="nav-link text-white-50 bg-dark rounded-pill lead" href="index.jsp#formulario">Conviértete en orador</a>
            <%
                if(session.getAttribute("email") != null){
            %>
          <a class="nav-link font-weight-bold text-success btn-outline-success rounded-pill lead" href="comprar-tickets.jsp">Comprar tickets</a>
            <%
                }
            %>

            <%
                        if(session.getAttribute("email") == null){
                    %>

                        <a class="nav-link btn-primary rounded-pill lead font-weight-bold mx-1" href="register.jsp">Registrarse</a>

                        <a class="nav-link btn-secondary rounded-pill  lead font-weight-bold mx-1" href="login.jsp">Iniciar Sesión</a>
                    
                    <%
                        }
                    %>
                    <%
                        if(session.getAttribute("email") != null){
                    %>


                        <a class="nav-link btn-secondary rounded-pill text-light lead font-weight-bold mx-1" href="datos-personales.jsp">Cuenta</a>

                        <a class="nav-link btn-danger rounded-pill lead font-weight-bold mx-1" href="logout">Cerrar Sesión</a>
                    
                    <%
                        }
                    %>
        </div>
      </div>
    </nav>

  </header>