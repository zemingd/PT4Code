package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func Scan() string {
	sc.Scan()
	return sc.Text()
}
func rScan() []rune {
	return []rune(Scan())
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
func mod(x, d int) int {
	x %= d
	if x < 0 {
		x += d
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
func fSum(a []float64) float64 {
	x := 0.
	for _, v := range a {
		x += v
	}
	return x
}
func bPrint(f bool, x string, y string) {
	if f {
		fmt.Println(x)
	} else {
		fmt.Println(y)
	}
}
func iSSPrint(x []int) {
	fmt.Println(strings.Trim(fmt.Sprint(x), "[]"))
}

var lp1 int = 1000000007
var lp2 int = 998244353

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, lp1)
	sc.Split(bufio.ScanWords)
	a, b, c, d := iScan(), iScan(), iScan(), iScan()
	fmt.Println(max([]int{a * c, a * d, b * c, b * d}))
}
