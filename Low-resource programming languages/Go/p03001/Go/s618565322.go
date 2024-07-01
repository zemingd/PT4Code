package main

import "fmt"

func main() {
	var w, h, x, y float64
	fmt.Scan(&w, &h, &x, &y)

	fmt.Println(w * h / 2)

	if w/2 == x && h/2 == y {
		fmt.Println(1)
	} else {
		fmt.Println(0)
	}
}
