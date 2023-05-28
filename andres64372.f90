program main
implicit none
integer :: triangle(3), lines, line
open(10, file='DATA.lst')
read(10, *) lines
do line = 1, lines
    read(10, *) triangle
    call sort(triangle, 1, 3)
    call sort(triangle, 1, 2)
    if ((triangle(2) + triangle(3)) > triangle(1)) then
        write(*, fmt="(1x, A)", advance="no") "1"
    else
        write(*, fmt="(1x, A)", advance="no") "0"
    end if
end do
end program main

recursive subroutine sort(triangle, cont, max)
    implicit none
    integer :: triangle(3), cont, aux, max
    if (cont < max) then
        if (triangle(cont + 1) > triangle(cont)) then
            aux = triangle(cont)
            triangle(cont) = triangle(cont + 1)
            triangle(cont + 1) = aux
        end if
        call sort(triangle, cont + 1, max)
    end if
    return
end subroutine sort
