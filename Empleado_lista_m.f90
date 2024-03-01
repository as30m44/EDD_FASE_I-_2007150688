module empleado_lista_m
  implicit none
  type empleado
    character(50) :: nombre
    integer :: edad
    character(50) :: puesto
    type(empleado), pointer :: siguiente, anterior
  end type empleado

  type :: empleado_lista
    type(empleado), pointer :: cabecera
    allocate(cabecera)
    cabecera%siguiente => cabecera
    cabecera%anterior => cabecera

    contains
      procedure :: insertar_empleado
      ! procedure :: borrar_empleado
      procedure :: imprimir
  end type empleado_lista

  contains
    subroutine insertar_empleado(empleado, p)
      type(empleado), pointer :: empleado, p
      empleado%siguiente => p%siguiente
      empleado%anterior => p
      p%siguiente%anterior => empleado
      p%siguiente => empleado
    endsubroutine insertar_empleado

end module empleado_lista_m

program main
  implicit none
end program main