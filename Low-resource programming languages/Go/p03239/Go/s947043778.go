package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var inf = 2147483647
var dbg = false

func main() {
	sc := NewScanner()
	N, T := sc.NextInt(), sc.NextInt()
	min := inf
	for i := 0; i < N; i++ {
		c, t := sc.NextInt(), sc.NextInt()
		if t <= T && c < min {
			min = c
		}
	}
	ans := "TLE"
	if min != inf {
		ans = fmt.Sprint(min)
	}
	fmt.Println(ans)
	// suppress warnings
	if dbg {
		fmt.Println(N, T)
		if false {
			_ = sc.NextToken()
		}
	}
}

type Scanner struct {
	sc *bufio.Scanner
}

func NewScanner() *Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return &Scanner{sc: sc}
}

func (r *Scanner) SetBuffer(size int) {
	buf := make([]byte, size)
	r.sc.Buffer(buf, size)
}

func (r *Scanner) NextToken() string {
	r.sc.Scan()
	return r.sc.Text()
}

func (r *Scanner) NextInt64() int64 {
	n, e := strconv.ParseInt(r.NextToken(), 10, 64)
	if e != nil {
		panic(e)
	}
	return n
}

func (r *Scanner) NextInt() int {
	n, e := strconv.ParseInt(r.NextToken(), 10, 32)
	if e != nil {
		panic(e)
	}
	return int(n)
}
