package main

import "fmt"

func main() {
	mod := 1000000007
	f := make([]int, 2010101)
	rf := make([]int, 2010101)
	f[0] = 1
	for i := 1; i < 2010101; i++ {
		f[i] = (f[i-1] * i) % mod
	}
	for i := 0; i < 2010101; i++ {
		rf[i] = inv(f[i], mod)
	}

	var X, Y int
	fmt.Scan(&X, &Y)
	for a := 0; a < X+1; a++ {
		b := Y - 2*a
		if a+2*b == X {
			fmt.Println(C(a+b, a, mod, f, rf))
			return
		}
	}
	fmt.Println(0)
}
func inv(x, mod int) int {
	res := 1
	k := mod - 2
	y := x
	for k > 0 {
		if (k & 1) == 1 {
			res = (res * y) % mod
		}
		y = (y * y) % mod
		//k /= 2
		k = k >> uint(1)
	}
	return res
}
func C(n, k, mod int, f, rf []int) int {
	a := f[n]
	b := rf[n-k]
	c := rf[k]

	bc := (b * c) % mod

	return (a * bc) % mod
}
