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

func nextString() string {
	if !sc.Scan() {
		panic(nil)
	}
	return sc.Text()
}

var production bool

func debugf(format string, v ...interface{}) {
	if !production {
		fmt.Printf(format, v...)
	}
}

// "aab$baabaa"
//z=x100031021
// i=5
// L,R = 5,5 -> 5,8 -> 5,7
// i=6
// k=1

// "aaaaaa"
//z=x54321
// i=1
// L,R = 1,6 -> 1,5
// i=2
// k=1
// L,R = 2,6

// "aabaab"
//z=x10310
// i=3
// L,R = 3,6 -> 3,5
// i=4
// k=1
// L,R = 2,6

func getZarray(s string) *[]int {
	z := make([]int, len(s))
	z[0] = -1
	l, r := 0, 0
	for i := 0; i < len(s); i++ {
		if r < i {
			l, r = i, i
			for r < len(s) && s[r-l] == s[r] {
				r++
			}
			z[i] = r - l
			r--
		} else {
			k := i - l
			if z[k] < r-i+1 {
				z[i] = z[k]
			} else {
				l = i
				for r < len(s) && s[r-l] == s[r] {
					r++
				}
				z[i] = r - l
				r--
			}
		}
	}
	return &z
}

func answer(reader io.Reader, writer io.Writer) {
	sc = bufio.NewScanner(reader)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, 1e+6)
	sc.Split(bufio.ScanWords)
	n := nextInt()
	s := nextString()
	var z *[]int
	ans := 0
	for i := 0; i < n; i++ {
		debugf("%v\n", z)
		z = getZarray(s[i:])
		for j := range *z {
			k := (*z)[j]
			if k > j {
				k = j
			}
			if k > ans {
				ans = k
			}
		}
	}

	_, _ = fmt.Fprintf(writer, "%d", ans)
}

func main() {
	production = true
	answer(os.Stdin, os.Stdout)
}
