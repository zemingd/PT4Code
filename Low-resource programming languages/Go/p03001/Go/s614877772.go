package main

import (
	"fmt"
)

func main() {
	var w,h,x,y float64
	fmt.Scan(&w, &h, &x, &y)
	
	if w == 2*x && h == 2*y {
		fmt.Println(w*h/2.0, 1)
	} else {
		fmt.Println(w*h/2.0, 0)
	}
}