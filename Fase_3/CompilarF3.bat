:: creación de los archivos objeto
D:
cd "D:\Programacion\24S1-EstructuraDatos\fase_1\"
gfortran -c Imagen_m.f90
gfortran -c Cliente_m.f90
gfortran -c Ventanilla_m.f90
gfortran -c Herramientas_m.f90
gfortran -c Tienda_m.f90
gfortran -c Pixel.f90
gfortran Imagen_m.f90 Cliente_m.f90 Ventanilla_m.f90 Herramientas_m.f90 Tienda_m.f90 Pixel.f90 -o Pixel
Pixel
pause