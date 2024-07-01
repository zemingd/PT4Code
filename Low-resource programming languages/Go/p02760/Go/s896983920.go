package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

var sc *bufio.Scanner

const bufferSize = 1024

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
	buf := make([]byte, bufferSize)
	sc.Buffer(buf, 1e+7)
	sc.Split(bufio.ScanWords)
	a := make([][]bool, 3)
	b := map[int][]int{}
	for i := range a {
		a[i] = make([]bool, 3)
		for j := range a[i] {
			v := nextInt()
			b[v] = []int{i, j}
		}
	}
	n := nextInt()
	for i := 0; i < n; i++ {
		v := nextInt()
		if _, ok := b[v]; ok {
			a[b[v][0]][b[v][1]] = true
		}
	}

	for i := 0; i < 3; i++ {
		if a[i][0] && a[i][1] && a[i][2] {
			_, _ = fmt.Fprint(writer, "Yes")
			return
		}
		if a[0][i] && a[1][i] && a[2][i] {
			_, _ = fmt.Fprint(writer, "Yes")
			return
		}
	}
	if a[0][0] && a[1][1] && a[2][2] {
		_, _ = fmt.Fprint(writer, "Yes")
		return
	}
	if a[2][0] && a[1][1] && a[0][2] {
		_, _ = fmt.Fprint(writer, "Yes")
		return
	}

	_, _ = fmt.Fprint(writer, "No")
}

func main() {
	production = true
	answer(os.Stdin, os.Stdout)
}
