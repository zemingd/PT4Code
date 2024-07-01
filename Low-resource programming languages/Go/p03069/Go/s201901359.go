package main

import (
	"bufio"
	"fmt"
	"os"
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

var mod int

func main() {
	mod = 1000000007
	buf := make([]byte, 0)
	sc.Buffer(buf, mod)
	sc.Split(bufio.ScanWords)
	n := intScanner()
	s := Scanner()
	w := make([]int, n)
	b := make([]int, n)
	for i := 0; i < n; i++ {
		if string(s[i]) == "." {
			w[i] = 1
		} else {
			b[i] = 1
		}
	}
	for i := 1; i < n; i++ {
		b[i] = b[i-1] + b[i]
	}
	for i := n - 2; i >= 0; i-- {
		w[i] = w[i+1] + w[i]
	}
	ans := make([]int, n-1)
	for i := 0; i < n-1; i++ {
		ans[i] = b[i] + w[i+1]
	}
	ans = append(ans, w[0])
	ans = append(ans, b[n-1])
	fmt.Println(min(ans))
}
func min(x []int) int {
	ret := x[0]
	for _, v := range x {
		if v < ret {
			ret = v
		}
	}
	return ret
}
