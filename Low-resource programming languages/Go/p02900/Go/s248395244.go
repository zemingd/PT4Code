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
	g := b
	// 素因数分解していく
	var primes []int
	for i := 2; i*i <= g; i++ {
		if g%i == 0 {
			primes = append(primes, i)
		} else {
			continue
		}
		for g%i == 0 {
			g = g / i
			g /= i
		}
	}
	// 最後に残るやつを処理
	if g > 1 {
		primes = append(primes, g)
	}
	fmt.Println(len(primes) + 1)
}
