module Ventanilla_lista_m
  implicit none

  ! Definición del nodo
  type, private :: Ventanilla_nodo
    private
    ! atributos del nodo
    integer :: id_int
    character(50) ::nombre_ventanilla_st
    ! apuntadores del nodo
    type (Ventanilla_nodo), pointer :: siguiente => null()
  end type Ventanilla_nodo

  ! constructor
  type, public :: Ventanilla_lista
    private
    type(Ventanilla_nodo), pointer :: nodo_inicio => null()
    contains
      procedure :: es_vacio! esta vacio (empty)
      ! procedure :: insertar_final! push (insertar al final) - pila
      ! procedure :: insertar_inicio! append (inserta al final) [investigar]
      ! procedure :: insertar! insert (intertar en una posicion dada)
      ! shift (eliminar al inicio)
      ! pop (elmininar al final)
      ! remove (elimina un valor especificado)
      ! clear (limpia la lista)
      ! procedure :: buscar_id_int! index (devuelve el indice del nodo)
      ! count (cuenta los elementos)
      ! sort (ordena los elementos)
      ! reverse (invierte el orden de los elementos)
  end type Ventanilla_lista

  contains
    logical function es_vacio(self) result(es_vacio_bool)
      class(Ventanilla_lista), intent(in) :: self
      es_vacio_bool = .not. associated(self%nodo_inicio)
    end function es_vacio

    subroutine insertar_final(self, )

    end subroutine

end module Ventanilla_lista_m