package main

import (
	"fmt"
	"sort"
)

func f(m int, a []int) int {
	var ret int

	for i := 0; i < len(a); i++ {
		ret += m % a[i]
	}
	return ret
}

func mul(a []int) int {
	ret := 1
	for i := 0; i < len(a); i++ {
		ret *= a[i]
	}
	return ret
}

func main() {
	var N int

	fmt.Scan(&N)
	var a = make([]int, N)

	for i := 0; i < N; i++ {
		fmt.Scan(&a[i])
	}

	sort.Ints(a)

	fmt.Println(f(mul(a)-1, a))
}
