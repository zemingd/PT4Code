package main

import (
	"fmt"
)

func main() {
	var W, H, x, y float64
	fmt.Scan(&W, &H, &x, &y)

	fmt.Print(W * H / 2)

	if (x*2 == W) && (y*2 == H) {
		fmt.Println(" 1")
	} else {
		fmt.Println(" 0")
	}
}
