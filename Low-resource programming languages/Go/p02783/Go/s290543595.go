package main

import (
	"fmt"
)

func main() {
	var re int
	var h float64
	fmt.Scanf("%f", &h)
  re = int(h)
	for i := 0; h > 1; i++ {
		h = h / 2
		re = re + 1
	}
  fmt.Printf("%d", re)
}
