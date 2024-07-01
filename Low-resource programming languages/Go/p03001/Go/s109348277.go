package main

import "fmt"

func main() {
	var w, h, x, y int
	fmt.Scan(&w, &h, &x, &y)

	c := 1
	if x+x != w || y+y != h {
		c = 0
	}
	fmt.Printf("%f %d", float64(w*h)/2, c)
}