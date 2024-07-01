package main

import "fmt"

func main() {
	var w, h, x, y float32
	fmt.Scan(&w, &h, &x, &y)

	fmt.Printf("%f ", w*h/2.0)
	if x+x == w && y+y == h {
		fmt.Println(1)
	} else {
		fmt.Println(0)
	}
}
