package main


import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func getLen(A, B int) int {
	if A == 1e18 || B == 1e18 {
		return 1e18
	}
	if A < B {
		return 2*(A) + B
	} else {
		return A + 2*B
	}
}

func main() {
	A := nextInt()
	B := nextInt()
	Q := nextInt()
	s := nextInts(A)
	t := nextInts(B)
	x := make([]int, Q)
	for i := 0; i < Q; i++ {
		x[i] = nextInt()

		l1 := binarySearch(x[i], s, 0, A, true)
		l2 := binarySearch(x[i], t, 0, B, true)
		r1 := binarySearch(x[i], s, -1, A-1, false)
		r2 := binarySearch(x[i], t, -1, B-1, false)
		Z := make([]int, 4)
		for i := 0; i < 4; i++ {
			Z[i] = 1e18
		}
		if s[0] <= x[i] && t[0] <= x[i] {
			Z[0] = Max(x[i]-s[l1], x[i]-t[l2])
		}
		if s[A-1] >= x[i] && t[B-1] >= x[i] {
			Z[1] = Max(s[r1]-x[i], t[r2]-x[i])
		}
		if s[0] <= x[i] && t[B-1] >= x[i] {
			Z[2] = getLen(x[i]-s[l1], t[r2]-x[i])
		}
		if s[A-1] >= x[i] && t[0] <= x[i] {
			Z[3] = getLen(s[r1]-x[i], x[i]-t[l2])
		}
		P := MinA(Z...)
		fmt.Println(P)
	}
}

func binarySearch(x int, A []int, L, R int, lower bool) int {
	l := L
	r := R
	for r-l > 1 {
		c := (r + l) / 2
		if A[c] < x {
			l = c
		} else if A[c] > x {
			r = c
		} else {
			return c
		}
	}
	if lower {
		return l
	} else {
		return r
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
