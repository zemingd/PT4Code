package main

import (
	"fmt"
)

func main() {
	var H, A int
	fmt.Scanf("%d %d\n", &H, &A)
	r := H / A
	if H%A != 0 {
		r++
	}
	fmt.Println(r)
}
