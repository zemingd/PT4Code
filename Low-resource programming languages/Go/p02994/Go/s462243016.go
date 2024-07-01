package main

import (
	"fmt"
)

func main() {
	var n,l int
	fmt.Scan(&n, &l)

	taste := 0
	for i := 1; i <= n; i++ {
		taste += l + i - 1
	}

	if taste == 0 {
		fmt.Println(0)
	} else if taste < 0 {
		fmt.Println(taste - (l + n - 1))
	} else {
		fmt.Println(taste - l)
	}
}