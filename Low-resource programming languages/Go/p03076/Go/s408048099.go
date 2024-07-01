package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	array := nextInts(5)
	var n []int
	t := 0
	for _, a := range array {
		t += a
		r := a % 10
		if r != 0 {
			r = 10 - r
		}
		n = append(n, r)
	}
	sort.Ints(n)
	for i := 0; i < len(n)-1; i++ {
		t += n[i]
	}
	fmt.Printf("%v", t)
}

func nextInt() int {
	v, _ := strconv.Atoi(nextReader())
	return v
}

func nextString() string {
	return nextReader()
}

func nextInts(n int) []int {
	r := make([]int, n)
	for i := 0; i < n; i++ {
		r[i] = nextInt()
	}
	return r
}

var nextReader func() string

func init() {
	nextReader = NewScanner()
}

func NewScanner() func() string {
	r := bufio.NewScanner(os.Stdin)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)
	return func() string {
		r.Scan()
		return r.Text()
	}
}

func Min(a int, b int) int {
	if a > b {
		return b
	}
	return a
}

func MaxIn2Values(a int, b int) int {
	if a > b {
		return a
	}
	return b
}

func MinIn2Values(a int, b int) int {
	if a < b {
		return a
	}
	return b
}

func Abs(a int) int {
	if a < 0 {
		return a * -1
	}
	return a
}
