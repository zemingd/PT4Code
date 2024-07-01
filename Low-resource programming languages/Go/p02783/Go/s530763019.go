package main

import "fmt"

func main() {
	var H, A int
	fmt.Scanf("%d %d", &H, &A)

	var count int
	if H%A == 0 {
		count = H / A
	} else {
		count = H/A + 1
	}

	fmt.Println(count)
}
