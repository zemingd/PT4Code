package main

import (
	"fmt"
)

func main() {
	var n, b, r int
	fmt.Scan(&n)
	fmt.Scan(&b)
	fmt.Scan(&r)

	if b == 0 {
		fmt.Println(0)
		return
	}
	if r == 0 {
		fmt.Println(n)
		return
	}

	block := b + r
	blockNum := n / block
	if blockNum == 0 {
		if b > n {
			fmt.Println(n)
			return
		} else {
			fmt.Println(b)
			return
		}
	}
	left := n % block
	if left/b == 1 {
		result := b + blockNum*b
		fmt.Println(result)
	} else {
		leftResult := left % b
		result := leftResult + blockNum*b
		fmt.Println(result)
	}

}
