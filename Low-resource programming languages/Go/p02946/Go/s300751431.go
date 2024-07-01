package main

import (
	"fmt"
)

func main() {
	var K, X int
	fmt.Scan(&K)
	fmt.Scan(&X)

	begin := true
	for i := X - K + 1; i <= X + K - 1; i++ {
		if !begin {
			fmt.Print(" ")
		}
		fmt.Print(i)
		begin = false
	}
	fmt.Println()
}
