package main

import "fmt"

func main() {
	var H, W int
	fmt.Scan(&H, &W)
	if W < H {
		W, H = H, W
	}
	if H == 1 {
		fmt.Println(1)
		return
	}
	if H&1+W&1 == 2 {
		fmt.Println(W*(H-1)/2 + (W+1)/2)
	} else {
		fmt.Println(W * H / 2)
	}
}
