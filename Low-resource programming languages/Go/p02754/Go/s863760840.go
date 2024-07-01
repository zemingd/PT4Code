package main

import (
	"fmt"
)

func main() {
	var (
		n, a, b, num int
		col []string
	)
	fmt.Scan(&n, &a, &b)

	for i := 0; i < n; i+=a+b {
		for j := 0; j < a; j++ {
			col = append(col, "b")
		}
		for k := 0; k < b; k++ {
			col = append(col, "r")
		}
	}
	for i := 0; i < n; i++ {
		if col[i] == "b" {
			num++
		}
	}
	fmt.Println(num)
}
