! ****************************************************************************************
program Generar_imagen
  ! importaciones
  ! declaracion de variables
  implicit none
  integer :: opcion_int
  logical :: salir_bool
  ! asignación de variables
  salir_bool = .false.
  ! ......................................................................................
  ! MENU PRINCIPAL
  do while (.not. salir_bool)
    call encabezado
    call inicio_sesion
    ! muestra el menu de opciones
  ! call system('cls')
    call menu()
    ! Selección y ejecución de opción
    print '(T8,A)', "Ingrese el numero de la opcion del menu que desea ejecutar..."
    read '(I1)', opcion_int
    ! si el numero es entre 1 y 6
    if((1 .le. opcion_int).and.(opcion_int .le. 6)) then
      call system('cls')
      ! ejecución de la opción según la elección
      select case (opcion_int)
        case (1)
          print '(A)', "1. Parametros iniciales"

        case (2)
          print '(A)', "2. Ejecutar paso"
          if (salir_bool) then
            print *, "la lista esta vacia"
          print '(A)', "pendiente de construccion"
          else
            print *, "la lista no esta vacia"
          end if
        case (3)
          print '(A)', "3. Estado en memoria de las estructuras"
        case (4)
          print '(A)', "4. Generar reportes"
          print '(A)', "pendiente de construccion"
        case (5)
          print '(A)', "5. Informacion de la aplicacion"
          call andres()
        case default
          call system('cls')
          print '(A)', "6. Salir"
          if (opcion_int .eq. 6) then
            salir_bool = .true.
          end if
          write (*,*) 'Presione cualquier tecla para salir'
          read (*,*)
      end select
    ! si el numero está fuera del rango
    else
      call system('cls')
      call Menu()
      print '(T8,A)', "Ingrese el numero de la opcion del menu que desea ejecutar..."
      read '(I1)', opcion_int
    end if
  end do
end program Generar_imagen
! ****************************************************************************************
! OPCIONES DEL MENU
subroutine menu()
  implicit none
  print '(A)', repeat("*",80)
  print '(T31,A)', "PIXEL PRINT STUDIO"
  print '(A/)', repeat("*",80)
  print '(A)', repeat("=",80)
  print '(T5,A)', "Menu de opciones"
  print '(A)', repeat(".",80)
  print '(T8,A)', "1. Parametros iniciales"
  print '(T8,A)', "2. Ejecutar paso"
  print '(T8,A)', "3. Estado en memoria de las estructuras"
  print '(T8,A)', "4. Generar reportes"
  print '(T8,A)', "5. Informacion de la aplicacion"
  print '(T8,A)', "6. Salir"
  print '(A/)', repeat("=",80)
end subroutine menu
! ***************************************************************************************
! MIS DATOS
subroutine andres()
  print '(A)', repeat("*",80)
  print *, "ESTRUCTURAS DE DATOS SECCION A"
  print '(A)', repeat("*",80)
  print *, "Nombre: Andres Gustavo Solis Martinez"
  print *, "Carne: 200715068"
  print '(A)', repeat(".",80)
  write (*,*) 'Presione cualquier tecla para continuar'
  read (*,*)
  call system('cls')
end subroutine andres
! ***************************************************************************************
! PANTALLA DE BIENVENIDA
subroutine menu_inicial()
  print '(A)', repeat(".",80)
  print '(A)', "Seleccione una opción del menu"
  print '(A)', repeat(".",80)
  print '(T8,A)', "1. Parametros iniciales"
  print '(T8,A)', "2. Ejecutar paso"
  print '(T8,A)', "3. Estado en memoria de las estructuras"
  print '(T8,A)', "4. Generar reportes"
  print '(T8,A)', "5. Informacion de la aplicacion"
  print '(T8,A)', "6. Salir"
  print '(A)', repeat(".",80)
end subroutine menu_inicial
! ***************************************************************************************
! INICIO DE SESIÓN
subroutine inicio_sesion()
  ! definición de variables
  character(15) :: usuario_char
  character(15) :: dpi_char
  character(15) :: contrasenia_char
  print '(A)', repeat(".",80)
  print '(A)', "Nombre de usuario [a-z][A-Z][0-9]:"
  print '(A)', repeat(".",80)
  read '(A15)', usuario_char
  print '(A)', "Codigo unico de identificacion (DPI) [0-9]:"
  print '(A)', repeat(".",80)
  read '(A15)', dpi_char
  print '(A)', repeat(".",80)
  print '(A)', "Contrasenia [a-z][A-Z][0-9]:"
  print '(A)', repeat(".",80)
  read '(A15)', contrasenia_char
  ! está pendiente la implementación para corroborar los datos ingresados
end subroutine inicio_sesion
! ***************************************************************************************
! ENCABEZADO
subroutine encabezado()
  print '(A/)', repeat("*",80)
  print '(T31, A)', "Pixel Print Studio"
  print '(T15, A/)', "Bienvenido al sistema de procesamiento de imagenes"
  print '(A//)', repeat("*",80)
end subroutine encabezado
