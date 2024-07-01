package main

import (
	"bufio"
	"bytes"
	"fmt"
	"log"
	"os"
	"strconv"
)

// const abcd = "abcdefghijklmnopqrstuvwxyz"
// const ABCD = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
var dr = [...]int{0, 1, 1, 1, 0, -1, -1, -1, 0}
var dc = [...]int{1, 1, 0, -1, -1, -1, 0, 1, 0}

func main() {
	log.SetFlags(log.Lshortfile)
	nextReader = NewScanner()
	A := nextInt()
	B := nextInt()
	fmt.Println(A*B - (A + B - 1))
	c := nextInts(4)
	fmt.Println(max(c...))
}

func max(a ...int) int {
	r := a[0]
	for i := 0; i < len(a); i++ {
		if r < a[i] {
			r = a[i]
		}
	}
	return r
}
func min(a ...int) int {
	r := a[0]
	for i := 0; i < len(a); i++ {
		if r > a[i] {
			r = a[i]
		}
	}
	return r
}
func sum(a []int) (r int) {
	for i := range a {
		r += a[i]
	}
	return r
}
func minmax(a, b int) (int, int) {
	if a > b {
		return b, a
	}
	return a, b
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func printInts(out []int, str string) {
	var bb bytes.Buffer
	for i := range out {
		bb.WriteString(strconv.Itoa(out[i]))
		bb.WriteString(str)
	}
	fmt.Println(bb.String())
}

var nextReader func() string

func NewScanner() func() string {
	r := bufio.NewScanner(os.Stdin)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)
	return func() string {
		r.Scan()
		return r.Text()
	}
}
func nextString() string {
	return nextReader()
}
func nextInt64() int64 {
	v, _ := strconv.ParseInt(nextReader(), 10, 64)
	return v
}
func nextInt() int {
	v, _ := strconv.Atoi(nextReader())
	return v
}
func nextInts(n int) []int {
	r := make([]int, n)
	for i := 0; i < n; i++ {
		r[i] = nextInt()
	}
	return r
}
func nextFloat64() float64 {
	f, _ := strconv.ParseFloat(nextReader(), 64)
	return f
}
