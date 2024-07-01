package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, initialBufSize), maxBufSize)
	defer wt.Flush()

	s, k := next(), nextInt()
	n := len(s)

	// 全部同じ文字か
	same := true
	for i := 0; i < n-1; i++ {
		same = same && s[i] == s[i+1]
	}
	if same {
		puts((n * k) / 2)
		return
	}

	a := 0
	for l := 0; l < 2*n; {
		var r int
		for r = l; r+1 < n && s[r+1] == s[l]; r++ {
		}
		a += (r - l + 1) / 2
		l = r + 1
	}

	// 文字列をまたがない
	if s[0] != s[n-1] {
		puts(a * k)
		return
	}

	var head, tail int
	for head = 0; head+1 < n && s[head] == s[head+1]; head++ {
	}
	for tail = n - 1; tail-1 >= 0 && s[tail] == s[tail-1]; tail-- {
	}
	b := head + 1 + n - tail
	puts(a*k - (a/2+b/2-(a+b)/2)*(k-1))
}

const (
	initialBufSize = 100000
	maxBufSize     = 10000000
)

var (
	sc = bufio.NewScanner(os.Stdin)
	wt = bufio.NewWriter(os.Stdout)
)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	i, _ := strconv.Atoi(next())
	return i
}

func puts(a ...interface{}) {
	fmt.Fprintln(wt, a...)
}
