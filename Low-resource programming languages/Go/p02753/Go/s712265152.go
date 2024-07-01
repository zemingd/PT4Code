package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	n, a, b := ScanInt(), ScanInt(), ScanInt()

	bCount := a * (n / (a + b))
	left := n - (a+b)*(n/(a+b))
	bCount += mn(a, left)

	P(bCount)

}

/*********************** I/O ***********************/

var in *bufio.Scanner
var P func(a ...interface{}) (n int, err error)

func init() {
	P = fmt.Println

	in = bufio.NewScanner(os.Stdin)
	in.Buffer(make([]byte, 1024), int(1e+7))
	in.Split(bufio.ScanWords)

}

func ScanWord() string { in.Scan(); return in.Text() }
func ScanInt() int     { i, _ := strconv.Atoi(ScanWord()); return i }
func mn(a, b int) int {
	if a < b {
		return a
	}
	return b
}
