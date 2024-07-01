package main

import (
	"fmt"
)

func power(a, b int64) int64 {
	if b == 0 {
		return int64(1)
	}
	ret := power(a, b/2)
	ret *= ret
	if b%2 == 1 {
		ret *= a
	}
	return ret
}

func main() {
	var n int64
	fmt.Scan(&n)

	var sqn int
	for sqn = 1; int64(sqn)*int64(sqn) < n; sqn++ {
	}

	isnotPrime := make([]bool, sqn+1)
	ans := 0

OUTER:
	for i := 2; i <= sqn; i++ {
		if isnotPrime[i] {
			continue OUTER
		}
		for j := 2; i*j <= sqn; j++ {
			isnotPrime[i*j] = true
		}
		for j := 1; ; j++ {
			if n%power(int64(i), int64(j)) == 0 {
				ans++
				n /= power(int64(i), int64(j))
			} else {
				break
			}
		}
	}
	if n != 1 && n > int64(sqn) {
		println(ans + 1)
		return
	}
	println(ans)
	return

}
