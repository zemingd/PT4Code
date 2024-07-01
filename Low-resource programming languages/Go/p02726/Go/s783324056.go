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
	n := nextInt()
	x := nextInt()
	y := nextInt()
	ans := make([]int, n-1)
	debugf("n: %d, x: %d, y: %d\n", n, x, y)

	ans[0] = n
	for i := 2; i < n; i++ {
		a := 0
		for j := 1; j < n; j++ {
			if j+i <= x { // 1
				a++
			} else if j <= x && x < j+i { // 2 or 3
				if j+i < y-(j+i-x-1) {
					a += 2
				} else if j+i == y-(j+i-x-1) {
					a++
				}
				if y < j+i+(y-x-1) && j+i+(y-x-1) <= n { // 2-3
					a++
				}
			} else { // 4 or 5
				offset := i - (j - x) - 1
				if offset >= 0 && j+i < y-offset { // 6
					a++
				}
				if offset > 0 && i+j < y+offset && y+offset <= n { // 7
					a++
				} else {
					if (offset < 0 || y+offset < j+i || j+i < y-offset) && j+i <= n { // 4
						a++
					}
				}
			}
			debugf("i: %d, j: %d, a: %d\n", i, j, a)
		}
		ans[i-1] = a
	}

	for i := range ans {
		_, _ = fmt.Fprintf(writer, "%d", ans[i])
		if i != len(ans)-1 {
			_, _ = fmt.Fprint(writer, "\n")
		}
	}
}

func main() {
	production = true
	answer(os.Stdin, os.Stdout)
}
