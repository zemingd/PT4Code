package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
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

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, mod)
	sc.Split(bufio.ScanWords)
	s, t := Scan(), Scan()
	p, q := make([]int, len(s)), make([]int, len(t))
	for i, r := range s {
		p[i] = int(r)
	}
	for i, r := range t {
		q[i] = int(r)
	}
	sort.Ints(p)
	sort.Sort(sort.Reverse(sort.IntSlice(q)))
	x := "Draw"
	for i := 0; i < smaller(len(s), len(t)); i++ {
		if p[i] < q[i] {
			x = "Yes"
			break
		} else if p[i] > q[i] {
			x = "No"
			break
		}
	}
	if x == "Draw" {
		if len(s) >= len(t) {
			x = "No"
		} else {
			x = "Yes"
		}
	}
	fmt.Println(x)
}
