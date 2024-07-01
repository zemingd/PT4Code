package main

import "fmt"

func main() {
	var W, H, x, y int
	fmt.Scan(&W, &H, &x, &y)
	vert := W/2-x == 0
	horz := H/2-y == 0
	fmt.Printf("%.9f ", float64(W)*float64(H)/2.0)
	if vert && horz || !vert && !horz {
		fmt.Printf("1\n")
	} else {
		fmt.Printf("0\n")
	}
}
