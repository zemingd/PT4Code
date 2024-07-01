package main

import "fmt"

const max int = 1000000
const mod int = 1000000007

var f [max]int
var rf [max]int

func main() {
	f[0], rf[0] = 1, 1
	for i := 1; i < max; i++ {
		f[i] = (f[i-1] * i) % mod
		rf[i] = inv(f[i], mod)
	}

	var X, Y int
	fmt.Scan(&X, &Y)
	for a := 0; a < X+1; a++ {
		b := Y - 2*a
		if a+2*b == X {
			fmt.Println(C(a+b, a))
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
		k = k >> uint(1)
	}
	return res
}
func C(n, k int) int {
	a := f[n]
	b := rf[n-k]
	c := rf[k]

	bc := (b * c) % mod

	return (a * bc) % mod
}
