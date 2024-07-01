package main

import "fmt"

const max int = 1000000
const mod int = 1000000007

var f [max]int
var rf [max]int

func main() {

	var X, Y int
	fmt.Scan(&X, &Y)
	ComInit()
	for a := 0; a < X+1; a++ {
		b := Y - 2*a
		if a+2*b == X {
			fmt.Println(C(a+b, a))
			return
		}
	}
	fmt.Println(0)
}
func ComInit() {
	f[0], rf[0] = 1, 1
	for i := 1; i < max; i++ {
		f[i] = (f[i-1] * i) % mod
		rf[i] = ModPow(f[i], mod-2, mod)
	}
}
func C(n, k int) int {
	a := f[n]
	b := rf[n-k]
	c := rf[k]

	bc := (b * c) % mod

	return (a * bc) % mod
}
func ModPow(x, n, mod int) int {
	sum := 1
	for n > 0 {
		if (n & 1) == 1 {
			sum = sum * x % mod
		}
		x = x * x % mod
		n = n >> uint(1)
	}
	return sum

}
