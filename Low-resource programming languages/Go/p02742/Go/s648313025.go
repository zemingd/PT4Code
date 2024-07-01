package main

import (
	"fmt"
)

func main() {
	var h, w int
	fmt.Scanf("%d %d", &h, &w)

	fmt.Println(answer(h, w))
}

func answer(h int, w int) int {
	if h%2 != 0 && w%2 != 0 {
		return (h*w+1)/2
	}
	return h*w/2
}
