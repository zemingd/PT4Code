package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
	"unicode"
)

const (
	initialBufSize = 1e4
	maxBufSize     = 1e10
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}
func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func nextFloat() float64 {
	sc.Scan()
	i, e := strconv.ParseFloat(sc.Text(), 64)
	if e != nil {
		panic(e)
	}
	return i
}

func intSlicePrint(el interface{}) {
	fmt.Println(strings.Trim(fmt.Sprint(el), "[]"))
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}

func main() {
	buf := make([]byte, initialBufSize)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords)

	a := next()
	if unicode.IsUpper(rune(a[0])) {
		fmt.Println("A")
	} else {
		fmt.Println("a")
	}
}

