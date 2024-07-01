package main

import "fmt"

func nextInt() int {
	var x int
	fmt.Scan(&x)
	return x
}

func main() {
	a := nextInt()
	b := nextInt()

	if b%a == 0 {
		fmt.Println(a + b)
	} else {
		fmt.Println(b - a)
	}
}
