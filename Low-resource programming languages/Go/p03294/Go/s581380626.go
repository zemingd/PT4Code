package main

import (
	"fmt"
)

func gcd(a, b uint64) uint64 {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func lcm(a, b uint64) uint64 {
	return a * b / gcd(a, b)
}

func mLcm(n ...uint64) uint64 {
	var ret uint64
	for i, v := range n {
		if i == 0 {
			ret = v
		} else {
			ret = lcm(ret, v)
		}
	}
	return ret
}

func f(m uint64, a []uint64) uint64 {
	ret := uint64(0)
	for i := 0; i < len(a); i++ {
		ret = ret + m%a[i]
	}
	return ret
}

func main() {
	var N int

	fmt.Scan(&N)
	var a = make([]uint64, N)

	for i := 0; i < N; i++ {
		fmt.Scan(&a[i])
	}

	m := mLcm(a...)
	fmt.Println(f(m-1, a))
}
