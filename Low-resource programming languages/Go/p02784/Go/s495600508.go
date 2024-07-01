package main

import (
	"fmt"
)

func main() {
	var h, n, a int
	fmt.Scan(&h, &n)

	ret := 0
	for i := 0; i < n; i++ {
		fmt.Scan(&a)
		ret += a
	}
	if h <= ret {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
