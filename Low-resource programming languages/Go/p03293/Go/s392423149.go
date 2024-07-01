package main

import (
	"fmt"
)

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func lcm(a, b int) int {
	return a * b / gcd(a, b)
}

func mLcm(n ...int) int {
	var ret int
	for i, v := range n {
		if i == 0 {
			ret = v
		} else {
			ret = lcm(ret, v)
		}
	}
	return ret
}

func f(m int, a []int) int {
	ret := 0
	for i := 0; i < len(a); i++ {
		ret = ret + m%a[i]
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

	m := mLcm(a...)
	fmt.Println(f(m-1, a))
}
