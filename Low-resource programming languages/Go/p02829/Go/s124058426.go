package main

import "fmt"

func main() {
	var A, B int
	fmt.Scanf("%d", &A)
	fmt.Scanf("%d", &B)

	for i := 0; i < 3; i++ {
		if A == i || B == i {
			continue
		} else {
			fmt.Println(i)
		}
	}
}
