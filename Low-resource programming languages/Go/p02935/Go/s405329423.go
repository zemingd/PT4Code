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
	s := make([]int, n)

	for i := range s {
		s[i] = nextInt()
	}
	sort.Sort(sort.IntSlice(s))
	ans := float64(s[0])
	for i := 1; i < n; i++ {
		ans = (ans + float64(s[i])) / 2
	}
	_, _ = fmt.Fprintf(writer, "%.10f", ans)
}

func main() {
	production = true
	answer(os.Stdin, os.Stdout)
}
