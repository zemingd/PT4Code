package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
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
func bOut(f bool, x string, y string) {
	if f {
		fmt.Println(x)
	} else {
		fmt.Println(y)
	}
}
func mod(x, d int) int {
	x %= d
	if x < 0 {
		x += d
	}
	return d
}
func iSSPrint(x []int) {
	fmt.Println(strings.Trim(fmt.Sprint(x), "[]"))
}

var lp int = 1000000007

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, lp)
	sc.Split(bufio.ScanWords)
	s, t := rScan(), rScan()
	a := make([][]int, 26)
	for i, v := range s {
		a[int(v)-97] = append(a[int(v)-97], i)
	}
	ans := 0
	tmp := -1
	for _, v := range t {
		if len(a[int(v)-97]) == 0 {
			ans = -1
			break
		}
		idx := sort.Search(len(a[int(v)-97]), func(j int) bool { return a[int(v)-97][j] > tmp })
		if idx == len(a[int(v)-97]) {
			tmp = a[int(v)-97][0]
			ans++
		} else {
			tmp = a[int(v)-97][idx]
		}
	}
	if ans == -1 {
		fmt.Println(-1)
	} else {
		fmt.Println(ans*len(s) + tmp + 1)
	}
}
