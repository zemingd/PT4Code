package main

import (
	"fmt"
	"os"
)

func main() {
	var N int
	fmt.Scan(&N)
	var H []int = make([]int, N)

	for i, _ := range H {
		fmt.Scan(&H[i])
	}

	for i := 0; i < N-1; i++ {
		if H[i] <= H[i+1] || H[i]-1 <= H[i+1] {
			continue
		}
		fmt.Println("No")
		os.Exit(0)
	}
	fmt.Println("Yes")

}
