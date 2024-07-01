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

func main() {
	var N int
	fmt.Scan(&N)
	var a uint64
	var sum uint64

	for i := 0; i < N; i++ {
		fmt.Scan(&a)
		sum += a
	}
	fmt.Println(sum - uint64(N))

}
