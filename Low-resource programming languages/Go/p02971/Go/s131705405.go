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

type bc struct {
	idx   int
	value int
}

type bcs []bc

func (b bcs) Len() int           { return len(b) }
func (b bcs) Less(i, j int) bool { return b[i].value < b[j].value }
func (b bcs) Swap(i, j int)      { b[i], b[j] = b[j], b[i] }



func answer(reader io.Reader, writer io.Writer) {
	sc = bufio.NewScanner(reader)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, 1e+6)
	sc.Split(bufio.ScanWords)
	n := nextInt()
	a := make([]bc, n)
	ans := make([]int, n)

	for i := range a {
		a[i].idx = i
		a[i].value = nextInt()
	}
	sort.Sort(sort.Reverse(bcs(a)))

	for i := range a {
		if i != a[0].idx {
			ans[i] = a[0].value
		} else {
			ans[i] = a[1].value
		}
	}

	for i := range a {
		_, _ = fmt.Fprintf(writer, "%d", ans[i])
		if i < len(a) - 1 {
			_, _ = fmt.Fprint(writer, "\n")
		}
	}
}

func main() {
	production = true
	answer(os.Stdin, os.Stdout)
}
