package main

import "fmt"

func main() {
	a, b := 0, 0
	fmt.Scanf("%d %d", &a, &b)
	if (b-1)%a == 0 {
		fmt.Println((b - 1) / a)
	} else {
		fmt.Println((b-1)/a + 1)
	}
}
