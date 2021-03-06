{Object_Title_and_Purpose}


CON
        _clkmode = xtal1 + pll16x                                               'Standard clock mode * crystal frequency = 80 MHz
        _xinfreq = 5_000_000

VAR
  long  symbol

PUB wait(seconds)  | x, waitTil
  waitTil := cnt
  repeat x from 0 to seconds
    waitTil += clkfreq
    waitcnt(waitTil)