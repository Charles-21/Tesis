subroutine wardaditoStatic

   !===============================================!
   !      Esta subrutina guarda los arreglos       !
   !                  generados                    !
   !===============================================!

   !------------------------------------------------
   ! Usamos el módulo 'arrays' para declarar arreglos
   ! y el módulo 'vars' para las variables de entrada.
   use arrays
   use vars

   implicit none

   !===================================================
   ! Dependiendo del tipo de materia guardaremos distintos datos.
   if(      matterType == 1 ) then
      !------------------------------------------------
      ! Para Klein-Gordon.
      write(13,"(3ES16.8)") t, phi1(2)
      write(14,"(3ES16.8)") t, phi2(2)
      write(24,"(3ES16.8)") t, maxval( abs(adot) )

      write(31,"(2ES16.8)") t, (rmax/dos)*( uno - (uno/a(Nr)**2) )


      !===================================================
   else if( matterType == 2 ) then
      !------------------------------------------------
      ! Para Dirac.
      write(13,"(2ES16.8)") t, F1(indMax)
      write(78,"(2ES16.8)") t, F(indMax)*dcos(w*t/s(Nr))
      write(14,"(2ES16.8)") t, maxval( F2 )
      write(23,"(2ES16.8)") t, maxval( G1 )
      write(24,"(2ES16.8)") t, maxval( G2 )

      write(28,"(2ES16.8)") t, a(Nr)
      write(29,"(2ES16.8)") t, alpha(2)

      write(35,"(2ES16.8)") t, (sum(abs(adot) ** 2) / Nr) ** (1.0D0 / 2.0D0)
      write(36,"(2ES16.8)") t, (sum(abs(adot) ** 3) / Nr) ** (1.0D0 / 3.0D0)
      write(37,"(2ES16.8)") t, (sum(abs(adot) ** 4) / Nr) ** (1.0D0 / 4.0D0)
      write(38,"(2ES16.8)") t, maxval( abs(adot) )

      write(41,"(2ES16.8)") t, (rmax/dos)*( uno - (uno/a(Nr)**2) )


      !===================================================
   else if( matterType == 3 ) then
      call evolveProca
   end if

end subroutine
