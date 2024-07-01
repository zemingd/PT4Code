package main

import "fmt"

type Combination struct {
	n int
	f *Factorial
}

func NewCombination(n int, m int64) *Combination {
	f := NewFactorial(n, m)
	return &Combination{n, f}
}

func (c *Combination) Combination(n, k int) int64 {
	return c.f.F[n] * c.f.Inv[k] % c.f.Mod * c.f.Inv[n-k] % c.f.Mod
}

func (c *Combination) Permutation(n, k int) int64 {
	return c.Combination(n+k-1, n-1)
}

func (c *Combination) Factorial(n int) int64 {
	return c.f.F[n]
}

type Factorial struct {
	n      int
	Mod    int64
	F, Inv []int64
}

func NewFactorial(n int, m int64) *Factorial {
	f := Factorial{n, m, nil, nil}
	f.F = make([]int64, n+1)
	f.Inv = make([]int64, n+1)
	f.F[0] = 1
	for i := 1; i <= n; i++ {
		f.F[i] = f.F[i-1] * int64(i) % f.Mod
	}
	f.Inv[n] = pow(f.F[n], f.Mod-2, f.Mod)
	for i := n; i > 0; i-- {
		f.Inv[i-1] = f.Inv[i] * int64(i) % f.Mod
	}
	return &f
}

func pow(x, n, m int64) int64 {
	if n == 0 {
		return 1
	}
	if n&1 == 0 {
		r := pow(x, n/2, m)
		return r * r % m
	}
	return x * pow(x, n-1, m) % m
}

func div(x, n, m int64) int64 {
	return x * pow(n, m-2, m) % m
}

func main() {
	const m int64 = 1000000007
	var x, y int
	fmt.Scan(&x, &y)
	n := y + x
	if n%3 != 0 || x < n/3 || y < n/3 {
		fmt.Println(0)
		return
	}
	n /= 3
	k := x - n
	c := NewCombination(n, m)
	fmt.Println(c.Combination(n, k))
}
