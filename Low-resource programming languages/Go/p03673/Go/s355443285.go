package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc, wr = bufio.NewScanner(os.Stdin), bufio.NewWriter(os.Stdout)

func scanString() string   { sc.Scan(); return sc.Text() }
func scanRunes() []rune    { return []rune(scanString()) }
func scanInt() int         { a, _ := strconv.Atoi(scanString()); return a }
func scanInt64() int64     { a, _ := strconv.ParseInt(scanString(), 10, 64); return a }
func scanFloat64() float64 { a, _ := strconv.ParseFloat(scanString(), 64); return a }

func scanInts(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ {
		res[i] = scanInt()
	}
	return res
}

func debug(a ...interface{}) { fmt.Fprintln(os.Stderr, a...) }

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

//•*¨*•.¸¸♪main•*¨*•.¸¸♪(　-ω-)ノ　(　・ω・)
func main() {
	defer wr.Flush()
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 10000), 1001001)

	n := scanInt()
	a := scanInts(n)
	b1, b2 := []int{}, []int{}
	f := true
	for i := 0; i < n; i++ {
		if f {
			b1 = append(b1, a[i])
			f = false
		} else {
			b2 = append(b2, a[i])
			f = true
		}
	}

	if !f {
		b1, b2 = b2, b1
	}
	for i := 0; i < len(b2); i++ {
		fmt.Fprint(wr, b2[len(b2)-1-i], " ")
	}
	for i := 0; i < len(b1); i++ {
		fmt.Fprint(wr, b1[i], " ")
	}

}
