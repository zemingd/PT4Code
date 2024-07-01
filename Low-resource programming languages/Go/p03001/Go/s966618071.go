package main

import (
	"fmt"
)

func main() {
	var W, H, x, y float64
	fmt.Scan(&W, &H, &x, &y)
	fmt.Println(W * H / 2)
	if W/2 == x && H/2 == y {
		fmt.Println("1")
		return
	}
	fmt.Println("0")
}
