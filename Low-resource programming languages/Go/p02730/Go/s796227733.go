package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	s := ScanWord()

	r := isPalindrom(s) && isPalindrom(s[:(len(s)-1)/2]) && isPalindrom(s[(len(s)-1+3)/2:])
	if r {
		P("Yes")
	} else {
		P("No")
	}
}

func isPalindrom(s string) bool {
	for i := 0; i < len(s)/2; i++ {
		if s[i] != s[len(s)-i-1] {
			return false
		}
	}
	return true
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
func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}
