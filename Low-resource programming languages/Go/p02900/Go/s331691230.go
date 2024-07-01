package main

import (
	"fmt"
	"sort"
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
	// 約数を求める
	// 約数を求める際の右の列の最小の数
	minRight := b
	var divisors []int
	for i := 1; i < minRight; i++ {
		if b%i == 0 {
			divisors = append(divisors, i)
			divisors = append(divisors, b/i)
			minRight = b / i
		}
	}

	// 互いに素な整数の配列を返す
	sort.Ints(divisors[:])
	result := 0
	tmp := b
	for _, num := range divisors {
		if num == 1 {
			continue
		}
		if tmp == 1 {
			break
		}
		for tmp%num == 0 {
			tmp = tmp / num
		}
		result++
	}
	fmt.Println(result)
}
