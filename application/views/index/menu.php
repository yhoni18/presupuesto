
<nav class="navbar navbar-expand-lg  navbar-dark bg-gradient-dark ">
    
    <a class="navbar-brand" href="#">Presupuestos</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="btn btn-success"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">

        <ul class="navbar-nav mr-auto">
            

            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Movimientos
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">

                    <a class="dropdown-item" href="#">Presupuestos</a>
                    <a class="dropdown-item" href="#">Orden de Compras</a>
                    <a class="dropdown-item" href="#">Orden de Conformidad</a>

                </div>
            </li>    

            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Mantenimiento
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">

                    
                    
                    <a class="dropdown-item" href="<?=site_url(array('producto', 'index'))?>"><i class="fa fa-fw fa-shopping-cart"></i> Productos</a>

                    <a class="dropdown-item" href="#">Compras</a>
                    <a class="dropdown-item" href="#">Pagos</a>

                </div>
            </li>

            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Seguridad
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="<?php echo site_url('usuario/listar') ?>">Usuarios</a>
                    <a class="dropdown-item" href="<?php echo site_url('rol/listar') ?>">Roles</a>
                </div>
            </li>


        </ul>

        
        <a href='<?php echo site_url('Autenticacion/logout'); ?>' class='btn btn-info'>Desconectar</a>
        
    </div>
</nav>

</header>


