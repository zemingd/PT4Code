package main

import (
	"fmt"
)

func main() {
	var a, b, x uint64
	fmt.Scan(&a, &b, &x)
	if (b-a)%x == 0 && a != b && a%x == 0 {
		fmt.Println((b-a)/x + 1)
	} else {
		fmt.Println((b - a) / x)
	}
}
