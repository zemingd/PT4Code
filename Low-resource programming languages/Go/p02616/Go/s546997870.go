package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func Scanner() string {
	sc.Scan()
	return sc.Text()
}

func intScanner() int {
	n, _ := strconv.Atoi(Scanner())
	return n
}

func floatScanner() float64 {
	n, _ := strconv.ParseFloat(Scanner(), 64)
	return n
}
func stringToInt(s string) int {
	n, _ := strconv.Atoi(s)
	return n
}
func stringSliceScanner(n int) []string {
	a := make([]string, n)
	for i := 0; i < n; i++ {
		a[i] = Scanner()
	}
	return a
}
func intSliceScanner(n int) []int {
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = intScanner()
	}
	return a
}
func larger(a, b int) int {
	if a < b {
		return b
	} else {
		return a
	}
}
func smaller(a, b int) int {
	if a > b {
		return b
	} else {
		return a
	}
}
func max(a []int) int {
	x := a[0]
	for i := 0; i < len(a); i++ {
		if x < a[i] {
			x = a[i]
		}
	}
	return x
}
func min(a []int) int {
	x := a[0]
	for i := 0; i < len(a); i++ {
		if x > a[i] {
			x = a[i]
		}
	}
	return x
}
func abs(x int) int {
	if x < 0 {
		x = -x
	}
	return x
}

var mod int

func main() {
	mod = 1000000007
	buf := make([]byte, 0)
	sc.Buffer(buf, mod)
	sc.Split(bufio.ScanWords)
	n := intScanner()
	k := intScanner()
	as := intSliceScanner(n)
	xs := make([]int, 0, n)
	ys := make([]int, 0, n)
	for i := 0; i < n; i++ {
		if as[i] < 0 {
			xs = append(xs, as[i])
		} else {
			ys = append(ys, as[i])
		}
	}
	sort.Sort(sort.Reverse(sort.IntSlice(ys)))
	sort.Ints(xs)
	ans := 1
	if n == k {
		for i := 0; i < n; i++ {
			if as[i] < 0 {
				ans *= as[i] + mod
			} else {
				ans *= as[i]
			}
			ans %= mod
		}
	} else if len(ys) == 0 {
		if k%2 == 0 {
			for i := 0; i < k; i++ {
				ans *= xs[i] + mod
				ans %= mod
			}
		} else {
			for i := n - 1; i > n-k-1; i-- {
				ans *= xs[i] + mod
				ans %= mod
			}
		}
	} else {
		if k%2 != 0 {
			ans = ys[0]
			ys = ys[1:]
			k--
		}
		i := 1
		j := 1
		for k > 0 {
			if i < len(xs) && j < len(ys) {
				p, q := xs[i-1]*xs[i], ys[j-1]*ys[j]
				if p > q {
					ans *= p % mod
					ans %= mod
					i += 2
					k -= 2
				} else {
					ans *= q % mod
					ans %= mod
					j += 2
					k -= 2
				}
			} else if i < len(xs) {
				ans *= xs[i-1] * xs[i] % mod
				ans %= mod
				i += 2
				k -= 2
			} else if j < len(ys) {
				ans *= ys[j-1] * ys[j] % mod
				ans %= mod
				j += 2
				k -= 2
			} else {
				break
			}
		}
	}
	fmt.Println(ans)
}
