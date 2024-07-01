package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	for i := 1; i <= 9; i++ {
		if div := n % i; div == 0 {
			if ans := n / i; ans <= 9 {
				fmt.Println("Yes")
				return
			}
		}
	}
	fmt.Println("No")
}
