package main

import (
	"fmt"
)

func main() {
	res := 0
	var n int
	fmt.Scan(&n)
	for i := 1; i <= n; i++ {
		res += i
	}
	fmt.Println(res)
}