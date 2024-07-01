package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	var k int
	fmt.Fscan(r, &k)

	if k <= 9 {
		fmt.Println(k)
		return
	}

	c := 0
	tmp := k
	for {
		tmp /= 3
		if tmp == 0 {
			break
		}
		c++
	}

	count := 0
	num := int(math.Pow10(c - 1))
	tmpK := k - int(math.Pow(float64(3), float64(c)))
	if tmpK == 0 {
		num = int(math.Pow10(c - 2))
		tmpK = k - int(math.Pow(float64(3), float64(c-1)))
	}
	for {
		if check(num) {
			count++
		}
		if count >= tmpK {
			break
		}
		num++
	}
	fmt.Println(num)
}

func check(x int) bool {
	s := strconv.Itoa(x)
	if len(s) == 1 {
		return true
	}
	flg := true
	for i := 0; i < len(s)-1; i++ {
		b := int(s[i] - '0')
		c := int(s[i+1] - '0')

		if abs(b-c) > 1 {
			flg = false
			break
		}
	}
	return flg
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

// mod combination
func modpow(a, n, mod int) int {
	res := 1
	for n > 0 {
		if n%2 != 0 {
			res = res * a % mod
		}
		a = a * a % mod
		n = n / 2
	}
	return res
}

func modcomb(n, a, mod int) int {
	x := 1
	y := 1
	for i := 0; i < a; i++ {
		x = x * (n - i)
		x %= mod
		y = y * (i + 1)
		y %= mod
	}
	return x * modpow(y, mod-2, mod) % mod
}

func modfactorial(n, mod int) int {
	result := 1
	for i := 1; i <= n; i++ {
		result = (result * i) % mod
	}
	return result
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

func reverseString(s string) string {
	r := []rune(s)
	for i, j := 0, len(r)-1; i < len(r)/2; i, j = i+1, j-1 {
		r[i], r[j] = r[j], r[i]
	}
	return string(r)
}

// Queue ...
type Queue []int

// pop ...
func (q *Queue) empty() bool {
	return len(*q) == 0
}

// push ...
func (q *Queue) push(i int) {
	*q = append(*q, i)
}

// pop ...
func (q *Queue) pop() (int, bool) {
	if q.empty() {
		return 0, false
	} else {
		res := (*q)[0]
		*q = (*q)[1:]
		return res, true
	}
}

// Stack ...
type Stack []int

// pop ...
func (s *Stack) empty() bool {
	return len(*s) == 0
}

// push ...
func (s *Stack) push(i int) {
	*s = append(*s, i)
}

// pop ...
func (s *Stack) pop() (int, bool) {
	if s.empty() {
		return 0, false
	} else {
		index := len(*s) - 1
		res := (*s)[index]
		*s = (*s)[:index]
		return res, true
	}
}
