package main

import (
	"fmt"
	"os"
)

var n, l int

func getFlavour(x int) int {
	result := 0
	for i := 0; i < n; i++ {
		result += i + l
	}
	return result - (x + l)
}

func main() {
	fmt.Scan(&n, &l)

	if l >= 0 {
		fmt.Println(getFlavour(0))
		os.Exit(0)
	}

	z := 1 - l
	if n >= z {
		fmt.Println(getFlavour(z - 1))
	} else {
		fmt.Println(getFlavour(n - 1))
	}
}