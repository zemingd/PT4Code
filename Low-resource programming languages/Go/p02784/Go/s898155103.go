package main

import (
	"fmt"
	"os"
)

func main() {
	var h, n, a int
	fmt.Scan(&h, &n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a)
		h -= a
		if h <= 0 {
			fmt.Println("Yes")
			os.Exit(0)
		}
	}
	fmt.Println("No")
}
