package main

import "fmt"

func dec(a int) int {
	if a == 0 {
		return 0
	}
	return a - 1
}

func main() {
	var a, b, x int
	fmt.Scan(&a, &b, &x)

	if a == b {
		fmt.Println(0)
	} else {
		fmt.Println((b+1)/x - dec(a)/x)
	}
}
