package main

import "fmt"

func main() {
	var W, H, x, y float64
	fmt.Scan(&W, &H, &x, &y)

	a1 := W * H / 2.0
	a2 := x == W/2.0 && y == H/2.0
	fmt.Printf("%f %d\n", a1, toInt(a2))
}

func toInt(b bool) int {
	if b {
		return 1
	}
	return 0
}