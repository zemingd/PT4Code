package main

import (
	"bufio"
	"fmt"
	"os"
)

func gcd(a, b int64) int64 {
	for a != 0 {
		a, b = b%a, a
	}
	return b
}

func abs(a int64) int64 {
	if a < 0 {
		a = -a
	}
	return a
}

func pow(x, n, m int64) int64 {
	if n == 0 {
		return 1
	}
	ret := pow(x, n/2, m)
	ret *= ret
	ret %= m
	if n%2 == 1 {
		ret *= x
		ret %= m
	}
	return ret
}

type pair [2]int64

func inv(p pair) pair {
	if p[0] == 0 {
		return pair{1, 0}
	}
	if p[1] == 0 {
		return pair{0, 1}
	}
	if p[1] < 0 {
		return pair{-p[1], p[0]}
	}
	return pair{p[1], -p[0]}
}

func main() {
	r := bufio.NewReader(os.Stdin)

	var n int
	fmt.Fscan(r, &n)
	a := make([]int64, n)
	b := make([]int64, n)
	for i := 0; i < n; i++ {
		fmt.Fscan(r, &a[i], &b[i])
	}

	m := make(map[pair]int64)
	var x int64
	for i := 0; i < n; i++ {
		if a[i] == 0 && b[i] == 0 {
			x++
		} else if a[i] == 0 {
			m[pair{0, 1}]++
		} else if b[i] == 0 {
			m[pair{1, 0}]++
		} else {
			g := gcd(abs(a[i]), abs(b[i]))
			a1, b1 := a[i]/g, b[i]/g
			if a[i] < 0 {
				a1, b1 = -a1, -b1
			}
			m[pair{a1, b1}]++
		}
	}

	var ans int64 = 1
	var M int64 = 1000000007
	for k := range m {
		k2 := inv(k)
		y := pow(2, m[k], M) - 1
		y += pow(2, m[k2], M) - 1
		y++
		delete(m, k2)
		ans *= y % M
		ans %= M
	}
	ans += x
	ans--
	if ans < 0 {
		ans += M
	}
	ans %= M
	fmt.Println(ans)
}
