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

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func answer(reader io.Reader, writer io.Writer) {
	sc = bufio.NewScanner(reader)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, 1e+6)
	sc.Split(bufio.ScanWords)
	n := nextInt()
	w := make([]int, n)
	r := make([]int, n)
	l := make([]int, n)

	for i := range w {
		w[i] = nextInt()
	}
	for i := range w {
		if i > 0 {
			r[i] = r[i-1] + w[i]
			l[i] = l[i-1] + w[len(w)-i-1]
		} else {
			r[0] = w[0]
			l[0] = w[len(w)-1]
		}
	}
	ans := 100 * 100 * 100
	for i := 0; i < len(w)-1; i++ {
		dif := l[i] - r[len(w)-i-2]
		if dif < 0 {
			dif = -dif
		}
		ans = min(ans, dif)
		debugf("%d: r:%d, l:%d, dif:%d, ans:%d\n", i, r[len(w)-i-2], l[i], dif, ans)
	}

	_, _ = fmt.Fprintf(writer, "%d", ans)
}

func main() {
	production = true
	answer(os.Stdin, os.Stdout)
}
