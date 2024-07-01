package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)

	answer(n)
}

func answer(n int) {
	for n > 0 {
		if n % 10 == 7 {
			fmt.Println("Yes")
			return
		}
		n = n / 10
	}
	fmt.Println("No")
	return
}
