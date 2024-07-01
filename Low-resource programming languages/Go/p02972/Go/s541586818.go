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

func answer(reader io.Reader, writer io.Writer) {
	sc = bufio.NewScanner(reader)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, 1e+6)
	sc.Split(bufio.ScanWords)
	n := nextInt()
	a := make([]int, n)
	b := make([]int, n)

	for i := range a {
		a[i] = nextInt()
	}
	debugf("a: %v\n", a)
	ans := 0
	for i := n; i > 0; i-- {
		b[i-1] = a[i-1]
		for j := i+i; j <= n; j += i {
			b[i-1] += b[j-1]
			b[i-1] %= 2
		}
		if b[i-1] == 1 {
			ans++
		}
		debugf("b: %v\n", b)
	}

	_, _ = fmt.Fprintf(writer, "%d", ans)
	if ans > 0 {
		_, _ = fmt.Fprint(writer, "\n")
		first := true
		for i := range a {
			if b[i] > 0 {
				if first == true {
					first = false
				} else {
					_, _ = fmt.Fprint(writer, " ")
				}
				_, _ = fmt.Fprintf(writer, "%d", i+1)
			}
		}
	}

}

func main() {
	production = true
	answer(os.Stdin, os.Stdout)
}
