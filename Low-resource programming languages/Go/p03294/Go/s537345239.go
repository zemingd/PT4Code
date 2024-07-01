package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	kotae := 0
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
		kotae += a[i]
	}
	kotae -= n
	fmt.Println(kotae)
}
