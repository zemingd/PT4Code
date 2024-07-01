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

func answer(reader io.Reader, writer io.Writer) {
	sc = bufio.NewScanner(reader)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, 1e+6)
	sc.Split(bufio.ScanWords)
	a := make([]int, 3)
	a[0] = nextInt()
	a[1] = nextInt()
	a[2] = nextInt()
	sort.Ints(a)
	sum := a[0] + a[1]

	_, _ = fmt.Fprintf(writer, "%d", sum)
}

func main() {
	answer(os.Stdin, os.Stdout)
}
