package main

import (
	"fmt"
	"os"
)

func main() {
	var (
		n int
		a []int
	)
	fmt.Scan(&n)

	a = make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}


	for _, v := range a {
		if v % 2 == 0 && v % 3 != 0 && v % 5 != 0 {
			fmt.Println("DENIED")
			os.Exit(0)
		}
	}
	fmt.Println("APPROVED")
}
