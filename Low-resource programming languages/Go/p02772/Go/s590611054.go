package main

import (
	"fmt"
)


func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i]) 
		if a[i] % 2 == 0 {
			if !(a[i] % 3 == 0 || a[i] % 5 == 0) {
				fmt.Println("DENIED")
				return 
			}
		}
	}
	fmt.Println("APPROVED")
}