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

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, mod)
	sc.Split(bufio.ScanWords)
	s := Scan()
	k := iScan()
	if len(s) == 1 {
		fmt.Println(k / 2)
	} else if len(s) == 2 {
		if s[0] == s[1] {
			fmt.Println(k)
		} else {
			fmt.Println(0)
		}
	} else {
		x := make([]int, 1)
		x[0] = 1
		for i := 1; i < len(s); i++ {
			if s[i-1] == s[i] {
				x[len(x)-1]++
			} else {
				x = append(x, 1)
			}
		}
		if len(x) == 1 {
			if x[0]%2 == 0 {
				fmt.Println(x[0] / 2 * k)
			} else {
				fmt.Println(x[0]*(k/2) + x[0]/2*(k%2))
			}
		} else {
			c := 0
			for _, v := range x {
				c += v / 2
			}
			c *= k
			if s[0] == s[len(s)-1] {
				if x[0]%2 != 0 && x[len(x)-1]%2 != 0 {
					c += k - 1
				}
			}
			fmt.Println(c)
		}
	}
}
