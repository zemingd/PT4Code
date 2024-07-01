package main

import (
	"fmt"
)

func main() {
	var W, H, x, y int
	var buf int
	fmt.Scanf("%d %d %d %d", &W, &H, &x, &y)
	if W == 2*x && H == 2*y {
		fmt.Printf("%f %d\n", float32(W*H)/2.0, 1)
		return
	} else if W == 2*x {
		fmt.Printf("%f %d\n", float32(W*H)/2.0, 0)
		return
	} else if H == 2*y {
		fmt.Printf("%f %d\n", float32(W*H)/2.0, 0)
		return
	}
	if W < H {
		buf = H
		H = W
		W = buf
		buf = x
		x = y
		y = buf
	}
	if W < 2*x {
		x = W - x
	}
	if H < 2*y {
		y = H - y
	}
	a := -float32(W) / float32(H)
	var d int = 0
	if W*y == H*x {
		d = 1
	}
	h := -a*float32(x) + float32(y)
	w := float32(x) - float32(y)/a
	fmt.Printf("%f %d\n", h*w/2.0, d)
}
