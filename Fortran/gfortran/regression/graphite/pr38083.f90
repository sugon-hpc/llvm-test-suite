! { dg-options "-O3 " }

SUBROUTINE IVSORT (IL,IH,NSEGS,IOUNIT)
  INTEGER IOUNIT  

  INTEGER, PARAMETER :: MAXGS = 32

10 IF (IL .GE. IH) GO TO 80
20 NSEGS = (IH + IL) / 2
  IF (NSEGS .GT. MAXSGS) THEN
     WRITE (IOUNIT) MAXSGS
  ENDIF
80 NSEGS = NSEGS - 1
90 IF (IH - IL .GE. 11) GO TO 20
110 IF (IL .EQ. IH) GO TO 80
END SUBROUTINE IVSORT
