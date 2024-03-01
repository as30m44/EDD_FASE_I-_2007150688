program Principal
  use Ventanilla_lista_m
  implicit none
  ! declaracion de variables
  integer :: opcion_int
  integer :: no_ventanilla_int
  logical :: salir_bool

  logical :: lista_vacia_bool

  salir_bool = .false.
  print '(A)', "Escriba el numero de ventanillas disponibles para el dia de hoy"
  read '(I1)', no_ventanilla_int
  do while (no_ventanilla_int .lt. 0)
    print '(A)', "numero invalido"
    print '(A)', "Escriba el número de ventanillas disponibles para el dia de hoy"
    read '(I1)', no_ventanilla_int
  end do
  call system('cls')
  print *, "hoy estaran disponibles ",no_ventanilla_int, "ventanillas"
  ! EJECUCIÓN DE PROGRAMA
  do while (.not. salir_bool)
    ! muestra el menu de opciones
    call Menu()
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
          if (lista_vacia_bool) then
            print *, "La lista esta vacia"
          else
            print *, "LA LISTA NO ESTA VACÍA"
          end if
        case (2)
          print '(A)', "2. Ejecutar paso"
          if (salir_bool) then
            print *, "la lista esta vacia"
          else
            print *, "la lista no esta vacia"
          end if
        case (3)
          print '(A)', "3. Estado en memoria de las estructuras"
        case (4)
          print '(A)', "4. Generar reportes"
        case (5)
          print '(A)', "5. Informacion de la aplicacion"
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
end program Principal

subroutine Menu()
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
end subroutine Menu
