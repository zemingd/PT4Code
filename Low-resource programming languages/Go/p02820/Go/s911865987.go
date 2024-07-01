package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	var N, K, R, S, P int
	fmt.Fscan(r, &N)
	fmt.Fscan(r, &K)
	fmt.Fscan(r, &R)
	fmt.Fscan(r, &S)
	fmt.Fscan(r, &P)
	var t string
	fmt.Fscan(r, &t)

	actual := make([]byte, N)
	ans := 0
	for i := 0; i < N; i++ {
		win := getWin(t[i])
		if i-K < 0 || actual[i-K] == 0 || win != actual[i-K] {
			// 勝てる場合
			ans += getPoint(win, R, S, P)
			actual[i] = win
		}
	}

	fmt.Println(ans)
}

func getWin(h byte) byte {
	if h == 'r' {
		return 'p'
	} else if h == 's' {
		return 'r'
	} else {
		return 's'
	}
}

func getPoint(h byte, r, s, p int) int {
	if h == 'r' {
		return r
	} else if h == 's' {
		return s
	} else {
		return p
	}
}

// Union-Find
type unionFind struct {
	d []int
}

func newUnionFind(n int) *unionFind {
	uf := new(unionFind)
	uf.d = make([]int, n)
	for i := 0; i < n; i++ {
		uf.d[i] = -1
	}
	return uf
}

func (uf *unionFind) find(x int) int {
	if uf.d[x] < 0 {
		return x
	}
	uf.d[x] = uf.find(uf.d[x])
	return uf.d[x]
}

func (uf *unionFind) unite(x, y int) bool {
	rootX := uf.find(x)
	rootY := uf.find(y)
	if rootX == rootY {
		return false
	}

	if uf.d[rootX] < uf.d[rootY] {
		uf.d[rootX] += uf.d[rootY]
		uf.d[rootY] = rootX
	} else {
		uf.d[rootY] += uf.d[rootX]
		uf.d[rootX] = rootY
	}

	return true
}

func (uf *unionFind) same(x, y int) bool {
	return uf.find(x) == uf.find(y)
}

func (uf *unionFind) size(x int) int {
	return -uf.d[uf.find(x)]
}

// Utility

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func primeFactor(x int) map[int]int {
	res := make(map[int]int)
	for i := 2; i*i <= x; i++ {
		for x%i == 0 {
			res[i]++
			x = x / i
		}
	}
	if x != 1 {
		res[x] = 1
	}
	return res
}

func divisor(x int) []int {
	res := make([]int, 0)
	for i := 1; i*i <= x; i++ {
		if x%i == 0 {
			res = append(res, i)
			if i != x/i {
				res = append(res, x/i)
			}
		}
	}
	return res
}

func gcd(x, y int) int {
	if y == 0 {
		return x
	}
	return gcd(y, x%y)
}

func lcm(x, y int) int {
	return x / gcd(x, y) * y
}
