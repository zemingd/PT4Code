package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	X := nextInt()
	N := nextInt()
	P := make([]int, N)
	s := false
	for i := 0; i < N; i++ {
		v := nextInt()
		P[i] = v
		if v == X {
			s = true
		}
	}
	if !s {
		fmt.Println(X)
		return
	}
	sort.Ints(P)
	base := 0
	for i, v := range P {
		if v == X {
			base = i
		}
	}
	big := X
	current := base
	for {
		if P[current] != big {
			break
		}
		current++
		big++
		if current > N-1 {
			break
		}
	}
	small := X
	current = base
	for {
		if P[current] != small {
			break
		}
		current--
		small--
		if current < 0 {
			break
		}
	}
	if Abs(big-X) < Abs(small-X) {
		fmt.Println(big)
		return
	}
	fmt.Println(small)
	return
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
