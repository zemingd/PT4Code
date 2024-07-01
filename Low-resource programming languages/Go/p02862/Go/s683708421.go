package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func Scan() string {
	sc.Scan()
	return sc.Text()
}
func iScan() int {
	n, _ := strconv.Atoi(Scan())
	return n
}
func fScan() float64 {
	n, _ := strconv.ParseFloat(Scan(), 64)
	return n
}
func stringToInt(s string) int {
	n, _ := strconv.Atoi(s)
	return n
}
func SScan(n int) []string {
	a := make([]string, n)
	for i := 0; i < n; i++ {
		a[i] = Scan()
	}
	return a
}
func iSScan(n int) []int {
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = iScan()
	}
	return a
}
func abs(x int) int {
	if x < 0 {
		x = -x
	}
	return x
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
func sum(a []int) int {
	x := 0
	for _, v := range a {
		x += v
	}
	return x
}

var mod int = 1000000007

type pair struct {
	fi int
	se int
}

func convination(n int, k int) int {
	if k < 0 || n < k {
		return 0
	}
	var ret = 1
	for i := 1; i <= k; i++ {
		ret *= n
		ret /= i
		n--
	}
	return ret
}
func modconvination(n int, k int) int {
	if k < 0 || n < k {
		return 0
	}
	var ret = 1
	for i := 1; i <= k; i++ {
		ret *= n
		ret %= mod
		ret = inverseDiv(ret, i)
		n--
	}
	return ret
}
func inverseDiv(a int, b int) int {
	return a * modinv(b, mod) % mod
}

func modinv(a int, m int) int {
	b := m
	u := 1
	v := 0
	for {
		if b == 0 {
			break
		}
		t := a / b
		a -= t * b
		a, b = b, a
		u -= t * v
		u, v = v, u
	}
	u %= m
	if u < 0 {
		u += m
	}
	return u
}

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, mod)
	sc.Split(bufio.ScanWords)
	//予備
	x := iScan()
	y := iScan()
	if (x+y)%3 != 0 || x > 2*y || y > 2*x {
		fmt.Println(0)
		return
	}
	n := (x + y) / 3
	r := x - n
	fmt.Println(modconvination(n, r))
}
