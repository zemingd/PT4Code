package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	// 最大公約数を求める
	r := a % b
	for r != 0 {
		a = b
		b = r
		r = a % b
	}

	if b == 1 {
		fmt.Println(1)
		return
	}
	tmp := b
	// 因数分解していく
	var divisors []int
	for i := 2; i <= b; i++ {
		if tmp%i == 0 {
			divisors = append(divisors, i)
		} else {
			continue
		}
		for tmp%i == 0 {
			tmp = tmp / i
		}
	}
	fmt.Println(len(divisors) + 1)
}
