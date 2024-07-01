package main

import "fmt"

func main() {
	var W, H, x, y int
	fmt.Scan(&W)
	fmt.Scan(&H)
	fmt.Scan(&x)
	fmt.Scan(&y)

	s := (W * H) / 2.0
	var f int
	
	if x == W/2 && y == H/2 {
		f = 1
	}
	fmt.Println(s, f)
}