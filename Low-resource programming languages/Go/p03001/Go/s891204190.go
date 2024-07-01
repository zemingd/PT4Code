package main

import "fmt"

func main() {
	var w, h, x, y int
	fmt.Scan(&w, &h, &x, &y)

	if w == h {
		fmt.Println((w-x)*h, 1)
	} else if w < h {
		fmt.Println((w-x)*h, 0)
	} else {
		fmt.Println((h-y)*w, 0)
	}
}
