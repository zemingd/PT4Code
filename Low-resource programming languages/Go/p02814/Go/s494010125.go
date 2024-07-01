package main

import (
	"fmt"
	"os"
)

func main() {
	m, a := input()
	arr, b, f := toMulBinary(a)
	if !f {
		fmt.Println(0)
		os.Exit(0)
	}
	lcm := arrLCM(arr) * b
	count := m / lcm
	if m%lcm == 0 {
		fmt.Println(count / 2)
	} else {
		fmt.Println(count/2 + 1)
	}
}

func arrLCM(a []int) int {
	n := 1
	for _, v := range a {
		n *= v / dcp(n, v)
	}
	return n
}

func dcp(p, q int) int {
	if q <= 0 {
		return p
	}
	return dcp(q, p%q)
}

func toMulBinary(a []int) ([]int, int, bool) {
	b := includBinary(a[0])
	for i := range a {
		n, f := isXBinary(a[i], b)
		if !f {
			return a, 0, false
		}
		a[i] = n
	}
	return a, b, true
}

func pow(b int) int {
	return 1 << uint32(b)
}

func isXBinary(n, b int) (int, bool) {
	if n%pow(b) != 0 {
		return n, false
	}
	if n%pow(b+1) == 0 {
		return n, false
	}
	return n / pow(b), true
}

func includBinary(n int) int {
	c := 0
	for n != 1 {
		if n%2 == 1 {
			return c
		}
		n /= 2
		c++
	}
	return c
}

func input() (int, []int) {
	var n, m int
	fmt.Scan(&n, &m)
	a := make(map[int]bool, n)
	var t int
	for i := 0; i < n; i++ {
		fmt.Scan(&t)
		a[t] = true
	}
	sa := make([]int, 0, n)
	for i := range a {
		_, ok := a[i]
		if ok {
			sa = append(sa, i)
		}
	}
	return m, sa
}
