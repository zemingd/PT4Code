package main

import (
	"fmt"
	"math"
	"math/big"
)

func main() {
	var n int
	fmt.Scan(&n)
	arr := make([]int, n)
	for i := 0; i < n; i++ {
		var tmp int
		fmt.Scan(&tmp)
		arr[i] = tmp
	}
	l, r := make([]int, n), make([]int, n)
	l[0], r[n - 1] = arr[0], arr[n - 1]
	for i := 1; i < n; i++ {
		l[i], r[n - i - 1] = gcd(l[i - 1], arr[i]), gcd(r[n - i], arr[n - i - 1])
	}
	max := math.MinInt32
	for i := 0; i < n; i++ {
		var ll, rr int
		if i - 1 >= 0 {
			ll = l[i - 1]
		}
		if i + 1 <= n - 1 {
			rr = r[i + 1]
		}
		var tmp int
		if ll == 0 {
			tmp = rr
		} else if rr == 0 {
			tmp = ll
		} else {
			tmp = gcd(ll, rr)
		}
		if max < tmp {
			max = tmp
		}
	}
	fmt.Println(max)
}


func gcd(m, n int) int {
	x := new(big.Int)
	y := new(big.Int)
	z := new(big.Int)
	a := new(big.Int).SetUint64(uint64(m))
	b := new(big.Int).SetUint64(uint64(n))
	return int(z.GCD(x, y, a, b).Uint64())
}