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
	k := nextInt()
	a := make([]int, n)

	for i := range a {
		a[i] = nextInt()
	}
	sort.Ints(a)
	l := int64(-1e18)
	r := int64(1e18)

	for l+1 < r {
		m := (l + r) / 2
		total := 0
		for i := range a {
			ll, rr := i, n
			if a[i] < 0 {
				for ll+1 < rr {
					mm := (ll + rr) / 2
					if int64(a[i])*int64(a[mm]) < m {
						rr = mm
					} else {
						ll = mm
					}
				}
				total += n - rr
			} else {
				for ll+1 < rr {
					mm := (ll + rr) / 2
					if int64(a[i])*int64(a[mm]) < m {
						ll = mm
					} else {
						rr = mm
					}
				}
				total += ll - i
			}
		}
		if total < k {
			l = m
		} else {
			r = m
		}
	}

	/*
		b := make([]int, n*(n-1)/2)

		c := 0
		for i := 0; i < len(a)-1; i++ {
			for j := i + 1; j < len(a); j++ {
				b[c] = a[i] * a[j]
				c++
			}
		}
		sort.Ints(b)

		_, _ = fmt.Fprintf(writer, "%d", b[k-1])
	*/
	_, _ = fmt.Fprintf(writer, "%d", l)
}

func main() {
	production = true
	answer(os.Stdin, os.Stdout)
}
