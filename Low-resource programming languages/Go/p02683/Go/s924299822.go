package main

import "fmt"

func main() {
	x, c, a := input()
	ans := calc(x, c, a)
	output(ans)
}

func calc(x int, c []int, a [][]int) int {
	min := -1
	perm := makeArray(len(c))
	for _, v := range perm {
		t := isFill(x, c, a, v)
		if min == -1 {
			min = t
		} else if t != -1 && t < min {
			min = t
		}
	}
	return min
}

func makeArray(n int) [][]int {
	p := make([][]int, pow2(n), pow2(n))
	for i := range p {
		p[i] = make([]int, n, n)
		d := i
		for k := n - 1; k >= 0; k-- {
			p[i][k] = d % 2
			d /= 2
		}
	}
	return p
}

func pow2(n int) int {
	s := 1
	for i := 0; i < n; i++ {
		s *= 2
	}
	return s
}

func isFill(x int, c []int, a [][]int, p []int) int {
	collect := make([]int, len(a[0]), cap(a[0]))
	for k, v := range p {
		if v == 0 {
			continue
		}
		for i := 0; i < len(a[0]); i++ {
			collect[i] += a[k][i]
		}
	}
	if isFilled(x, collect) {
		s := 0
		for k, v := range p {
			if v == 0 {
				continue
			}
			s += c[k]
		}
		return s
	}
	return -1
}

func isFilled(x int, c []int) bool {
	for _, v := range c {
		if v < x {
			return false
		}
	}
	return true
}

func output(ans int) {
	fmt.Println(ans)
}

func input() (int, []int, [][]int) {
	var n, m, x int
	fmt.Scan(&n, &m, &x)
	c := make([]int, n, n)
	a := make([][]int, n, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&c[i])
		a[i] = make([]int, m, m)
		for k := 0; k < m; k++ {
			fmt.Scan(&a[i][k])
		}
	}
	return x, c, a
}
