package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	L := nextInt64()
	R := nextInt64()
	if (R - L) > 2018 {
		fmt.Printf("%d", 0)
	} else {
		r := make([]int, R-L+1)
		s := L % 2019
		for i := 0; i < len(r); i++ {
			r[i] = (int(s) + i) % 2019
		}
		found673 := false
		found3 := false
		for _, v := range r {
			if v == 673 {
				found673 = true
			}
			if v == 3 {
				found3 = true
			}
		}
		if found673 && found3 {
			fmt.Printf("%d", 0)
		} else {
			sort.Ints(r)
			fmt.Printf("%d", r[0]*r[1])
		}
	}
}

func nextInt() int {
	v, _ := strconv.Atoi(nextReader())
	return v
}

func nextInt64() int64 {
	v, _ := strconv.ParseInt(nextReader(), 10, 64)
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

func nextInt64s(n int) []int64 {
	r := make([]int64, n)
	for i := 0; i < n; i++ {
		r[i] = nextInt64()
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

func Max(a int, b int) int {
	if a > b {
		return a
	}
	return b
}

func MinA(arg ...int) int {
	var s = arg[0]
	for _, v := range arg {
		s = Min(s, v)
	}
	return s
}

func MaxA(arg ...int) int {
	var s = arg[0]
	for _, v := range arg {
		s = Max(s, v)
	}
	return s
}

func Abs(a int) int {
	if a < 0 {
		return a * -1
	}
	return a
}
