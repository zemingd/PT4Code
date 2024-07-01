package main

import "fmt"

func attackMonster(h int, a int) int{
  for i:= 0;;i++{
    rh := h - a
    if rh <= 0 {
    	return i+1
      	break
    }
    return 0
  }
}