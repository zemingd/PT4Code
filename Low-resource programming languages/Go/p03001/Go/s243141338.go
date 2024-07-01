package main

import "fmt"

func main() {
	var w, h, x, y float32
	fmt.Scan(&w, &h, &x, &y)

	fmt.Printf("%f ", w*h/2.0)
	if x*2 == w && y*2 == h {
		fmt.Println(1)
	} else {
		fmt.Println(0)
	}
}
