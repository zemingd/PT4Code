package main

import (
	"fmt"
)

func main() {
	var n int
	var a, b string
	fmt.Scan(&n)
	fmt.Scan(&a)
	fmt.Scan(&b)

	res := ""
	for i := 0; i < n; i++ {
		res += string(a[i])
		res += string(b[i])
	}
	fmt.Println(res)
}
