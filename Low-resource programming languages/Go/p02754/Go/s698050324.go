package main

import (
	"fmt"
)

func main() {
	var n, a, b int
	fmt.Scan(&n)
	fmt.Scan(&a)
	fmt.Scan(&b)

	if a == 0 {
		fmt.Println(0)
		return
	}
	if b == 0 {
		fmt.Println(n)
		return
	}

	sum := a + b
	block := n / sum
	left := n % sum
	if left/3 == 1 {
		result := a + block*a
		fmt.Println(result)
	} else {
		leftResult := left % a
		result := leftResult + block*a
		fmt.Println(result)
	}

}
