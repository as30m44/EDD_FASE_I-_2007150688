:: directorio de los archivos
D:
cd "D:\Programacion\24S1-EstructuraDatos\EDD_Fase2_200715068\EDD_Fase2_200715068"
:: generación de los archivos objeto
@REM gfortran -c Imagen_m.f90
@REM gfortran -c Cliente_m.f90
@REM gfortran -c Ventanilla_m.f90
@REM gfortran -c Herramientas_m.f90
@REM gfortran -c Tienda_m.f90
gfortran -c Generar_imagen.f90
:: compilación del proyecto
@REM gfortran Imagen_m.f90 Cliente_m.f90 Ventanilla_m.f90 Herramientas_m.f90 Tienda_m.f90 Pixel.f90 -o Pixel
gfortran Generar_imagen.f90 -o Generar_imagen
:: ejecución del proyecto
Generar_imagen
:: pausar la consola
pause