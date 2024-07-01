package main

import (
	"fmt"
)

func main() {
	var h, a int
	fmt.Scanf("%d %d", &h, &a)
	for i := 1; ; i++ {
		h = h - a
		if h <= 0 {
			fmt.Printf("%d", i)
          	break
		}
	}
}
