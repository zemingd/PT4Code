package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

var sc *bufio.Scanner

const BufferSize = 1024

func nextInt() int {
	if !sc.Scan() {
		panic(nil)
	}
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

var production bool

func debugf(format string, v ...interface{}) {
	if !production {
		fmt.Printf(format, v...)
	}
}

func min(a ...int) int {
	res := a[0]
	for i := 1; i < len(a); i++ {
		if res > a[i] {
			res = a[i]
		}
	}
	return res
}

func answer(reader io.Reader, writer io.Writer) {
	sc = bufio.NewScanner(reader)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, 1e+6)
	sc.Split(bufio.ScanWords)
	m := 2019
	l := nextInt()
	r := nextInt()
	l2 := l % m
	r2 := r % m
	ans := 0
	// if l2 > r2 { ans = 0 }
	debugf("%v, %v\n", l2, r2)
	if l2 < r2 && (r-l) < 2019 {
		ans = m
		for i := l2; i < r2; i++ {
			for j := i + 1; j <= r2; j++ {
				ans = min((i*j)%m, ans)
			}
		}
	}
	_, _ = fmt.Fprintf(writer, "%d", ans)
}

func main() {
	production = true
	answer(os.Stdin, os.Stdout)
}
