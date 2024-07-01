package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"math/big"
	"os"
)

var scan *bufio.Scanner
var reader io.Reader
var writer io.Writer

func init() {
	scan = bufio.NewScanner(os.Stdin)
	reader = os.Stdin
	writer = os.Stdout
	scan.Split(bufio.ScanWords)
}

func main() {
	solve()
}

func solve() {
	var a, b int
	fmt.Scan(&a, &b)
	g := gcd(a, b)
	res := divR(g)
	fmt.Print(res)
}

func divR(x int) int {
	res := 0
	di := div(x)
	for _, i := range di {
		tmp := div(i)
		if len(tmp) == 1 || len(tmp) == 2 {
			res++
		}
	}
	return res
}

func div(x int) []int {
	var di []int
	for i := 1; i*i <= x; i++ {
		if x%i == 0 {
			di = append(di, i)
			if i*i != x {
				di = append(di, x/i)
			}
		}
	}
	return di
}

func gcd(x, y int) int {
	var m, n int
	if x > y {
		m = x
		n = y
	} else {
		m = y
		n = x
	}
	for m%n != 0 {
		var tmp int
		tmp = m % n
		m = n
		n = tmp
	}
	return n
}

func cin(a ...interface{}) {
	for i := 0; i < len(a); i++ {
		doScan(a[i])
	}
	return
}
func doScan(a interface{}) {
	switch a.(type) {
	case *[]int:
		s := *a.(*[]int)
		for i := 0; i < len(s); i++ {
			fmt.Fscan(reader, &s[i])
		}
	case *[]string:
		s := *a.(*[]string)
		for i := 0; i < len(s); i++ {
			fmt.Fscan(reader, &s[i])
		}
	default:
		fmt.Fscan(reader, a)
	}
	return
}

func print(a ...interface{}) {
	fmt.Fprint(writer, a...)
}

func println(a ...interface{}) {
	fmt.Fprintln(writer, a...)
}

func max(x int, y ...int) int {
	res := float64(x)
	for _, z := range y {
		res = math.Max(res, float64(z))
	}
	return int(res)
}

func min(x int, y ...int) int {
	res := float64(x)
	for _, z := range y {
		res = math.Min(res, float64(z))
	}
	return int(res)
}

func abs(x int) int {
	return int(math.Abs(float64(x)))
}

func sqrt(x int) int {
	return int(math.Sqrt(float64(x)))
}

func int2Int(x int) big.Int {
	var res big.Int
	res.SetInt64(int64(x))
	return res
}
