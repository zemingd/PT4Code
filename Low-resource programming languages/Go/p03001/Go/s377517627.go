package main

import "fmt"

func main() {
	var W, H, x, y int
	fmt.Scan(&W, &H, &x, &y)
	vert := W/2 == x
	horz := H/2 == y
	fmt.Printf("%.9f ", float64(W)*float64(H)/2.0)
	if x == 0 && horz || x == W && horz || y == 0 && vert || y == H && vert {
		fmt.Printf("1\n")
	} else if x == 0 || x == W || y == 0 || y == H {
		fmt.Printf("0\n")
	} else if vert && horz || !vert && !horz {
		fmt.Printf("1\n")
	} else {
		fmt.Printf("0\n")
	}
}
