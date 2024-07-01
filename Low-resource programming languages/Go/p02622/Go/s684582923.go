package main

import (
	"fmt"
)

func main() {
	var a, b string
	fmt.Scan(&a)
	fmt.Scan(&b)

	var cnt int
	for i := 0; i < len(a); i++ {
		if a[i] != b[i] {
			cnt++
		}
	}

	fmt.Println(cnt)
}
