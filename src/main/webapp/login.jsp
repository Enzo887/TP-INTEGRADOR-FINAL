<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="es">
<jsp:include page="head.jsp"/>
<body style="background-color: #1c1a38;">
<section class="container mb-5" id="form-orador">

    <div class="row justify-content-center" >

        <div class="col-lg-8 col-xl-7 rounded-lg mt-5" style=" background-color: #fdd306;" >

            <div class="row">
                <div class="col d-flex align-items-center justify-content-center mb-3">
                <img src="imagenes/new_codoacodo.PNG" alt="codo" width="80px" class="rounded m-2" >
                <h1>Iniciar Sesión</h1>
            </div>
        </div>


        <form action="login" method="post">

            <div class="row">
                <div class="col mb-3">
                    <input type="email" class="form-control" placeholder="Email" aria-label="Email" name="email" required>
                </div>
                <div class="col mb-3">
                    <input type="password" class="form-control" placeholder="Contraseña" name="password" aria-label="Password" required>
                </div>
            </div>
            <div class="row">
                <div class="col mb-3">
                    <div class="d-flex justify-content-center align-items-center">
                        <button type="submit" class="btn btn-light border-light btn-lg btn-form">Iniciar Sesión</button>
                    </div>
                </div>
            </div>
        </form>
        <div class="text-center">
            <p>ó</p>
        </div>
        <form class="container" action="register.jsp">
            <article class="text-center">
                <input type="submit" class="btn btn-light btn-lg border-light btn-form mb-3" value="Registrarse">
            </article>
        </form>

    </div>

    <div class="col d-flex justify-content-center
               align-items-center pt-5 pr-0 pl-4">
        <img src="imagenes/inicio_sesion.png" width="330px" height="300" alt="">
    </div>
    </div>
</section>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
</body>
</html>
