package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"sort"
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
	for i := range b {
		b[i] = -1
	}

	ans := 0
	for i := range a {
		a[i] = nextInt()
	}
	debugf("a: %v\n", a)
	for i := range a {
		j := sort.Search(ans, func(k int) bool { return b[k] < a[i] })
		if b[j] == -1 {
			b[j] = a[i]
			ans++
		} else if b[j] < a[i] {
			b[j] = a[i]
		}
		debugf("b: %v\n", b)
		/*
		for j := range b {
			if b[j] == -1 {
				b[j] = a[i]
				ans++
				break
			} else if b[j] < a[i] {
				b[j] = a[i]
				break
			}
		}
		*/
	}

	_, _ = fmt.Fprintf(writer, "%d", ans)
}

func main() {
	production = true
	answer(os.Stdin, os.Stdout)
}
