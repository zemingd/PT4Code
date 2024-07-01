package main

import (
	"fmt"
)

func main() {
	var n, a int

	fmt.Scanln(&n)

	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &a)
		if a%2 == 0 {
			if a%3 != 0 && a%5 != 0 {
				fmt.Println("DENIED")
			}
		}
	}

	fmt.Println("APPROVED")
}
