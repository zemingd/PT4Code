package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {

	k := ScanInt()
	n := int64(0)
	for i := 1; i <= k; i++ {
		n++
		l := n % 10
		la := (n / 10) % 10
		if (n / 10) > 0 && abs(la-l) > 1 {
			n = n / 10
			if n % 10 == 9 {
				n = n *10 + 8
			} else {
				n++
				l = (n % 10) - 1
				if l == -1 {
					l = n % 10
				}
				n = 10*n + l
			}
		}
		//P(">>", n)
	}
	P(n)
}

/*********************** I/O ***********************/

var in *bufio.Scanner
var P func(a ...interface{}) (n int, err error)

func init() {
	P = fmt.Println

	in = bufio.NewScanner(os.Stdin)
	in.Buffer(make([]byte, 1024), int(1e+9))
	in.Split(bufio.ScanWords)
}

func ScanWord() string { in.Scan(); return in.Text() }
func ScanInt() int     { i, _ := strconv.Atoi(ScanWord()); return i }
func ScanStringSlice(n int) []string {
	s := make([]string, n)
	for i := 0; i < n; i++ {
		s[i] = ScanWord()
	}
	return s
}
func ScanIntSlice(n int) []int {
	arr := make([]int, n)
	for i := 0; i < n; i++ {
		arr[i] = ScanInt()
	}
	return arr
}

/*********************** Utils ***********************/

func S(v interface{}) string { return fmt.Sprintf("%v", v) }
func MnMx(args ...int) (int, int) {
	minVal, maxVal := int(math.MaxInt32), int(math.MinInt32)
	for _, v := range args {
		if v < minVal {
			minVal = v
		}
		if v > maxVal {
			maxVal = v
		}
	}
	return minVal, maxVal
}
func Mn(args ...int) int { mn, _ := MnMx(args...); return mn }
func Mx(args ...int) int { _, mx := MnMx(args...); return mx }
func LCM(a, b int) int   { return a / GCD(a, b) * b }
func GCD(a, b int) int {
	if a == 0 {
		return b
	}
	return GCD(b%a, a)
}
func abs(x int64) int64 {
	if x < 0 {
		return -x
	}
	return x
}
