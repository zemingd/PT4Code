package main

import "fmt"

func main() {
	var h, w int
	fmt.Scanf("%d %d", &h, &w)
	if h == 1 || w == 1 {
		fmt.Println(1)
		return
	}
	sq := h * w
	if sq%2 == 1 {
		sq = sq/2 + 1
	} else {
		sq /= 2
	}
	fmt.Println(sq)
}
