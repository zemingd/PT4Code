package main

import (
	"fmt"
)

func main() {

	var H, A int
	fmt.Scanf("%d %d", &H, &A)

	var count int
	count = 1
	for {
		if H <= A {
			break
		} else {
			H = H - A
			count++
		}
	}

	fmt.Println(count)

}
