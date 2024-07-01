package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	array := nextInts(5)
	s := 9
	t := 0
	for _, a := range array {
		rest := a % 10
		if rest != 0 && rest < s {
			s = rest
		}
		add := 0
		if rest > 0 {
			add = 10 - rest
		}
		t += a + add
	}
	fmt.Printf("%v", t-(10-s))
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
