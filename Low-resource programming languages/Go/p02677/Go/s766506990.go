package main

import (
  	"fmt"
 	"math" 
)


func main() {
	var a, b, h, m float64
    fmt.Scan(&a, &b, &h, &m)
  	
  	var wl float64 = math.Pi/360
  	var ws float64 = math.Pi/30
  	var result float64
    if h *5 == m {
      result = 0
      fmt.Println(result)
    }else {
      time := h*60 + m
      theta := math.Abs((wl-ws)*time)
      
      result = math.Sqrt(a*a + b*b - 2*a*b*math.Cos(theta))
    }
  	fmt.Println(result)
}