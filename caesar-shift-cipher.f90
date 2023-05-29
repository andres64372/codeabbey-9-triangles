program Caesar_Cipher
  implicit none
 
  integer :: key    
  character(len = 1000) :: message
  read *, key
  read (*, '(A)') message
  call encrypt(message)
  write(*, "(2a)") message
 
contains
  subroutine encrypt(text)
    character(*), intent(inout) :: text
    integer :: i
    key = 26 - key
    do i = 1, len(text)
      select case(text(i:i))
        case ('A':'Z')
          text(i:i) = achar(modulo(iachar(text(i:i)) - 65 + key, 26) + 65)
        case ('a':'z')
          text(i:i) = achar(modulo(iachar(text(i:i)) - 97 + key, 26) + 97)
      end select
    end do
  end subroutine
end program Caesar_Cipher
