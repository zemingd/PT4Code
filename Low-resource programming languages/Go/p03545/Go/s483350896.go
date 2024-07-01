package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

var (
	readString func() string
	stdout     *bufio.Writer
)

func init() {
	readString = newReadString(os.Stdin)
	stdout = bufio.NewWriter(os.Stdout)
}

func newReadString(ior io.Reader) func() string {
	r := bufio.NewScanner(ior)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)

	return func() string {
		if !r.Scan() {
			panic("Scan failed")
		}
		return r.Text()
	}
}

func readInt() int {
	return int(readInt64())
}

func readInt64() int64 {
	i, err := strconv.ParseInt(readString(), 0, 64)
	if err != nil {
		panic(err.Error())
	}
	return i
}

func readIntSlice(n int) []int {
	b := make([]int, n)
	for i := 0; i < n; i++ {
		b[i] = readInt()
	}
	return b
}

func readLengthAndSlice() (int, []int) {
	n := readInt()
	return n, readIntSlice(n)
}

func printf(f string, args ...interface{}) (int, error) {
	return fmt.Fprintf(stdout, f, args...)
}

func println(args ...interface{}) (int, error) {
	return fmt.Fprintln(stdout, args...)
}

func eprintln(args ...interface{}) (int, error) {
	return fmt.Fprintln(os.Stderr, args...)
}

// readString() string
// readInt() int
// readIntSlice(n int) []int
// readLengthAndSlice() []int

// -----------------------------------------------------------------------------

func main() {
	defer stdout.Flush()
	s := []byte(readString())
	a := int(s[0] - '0')
	b := int(s[1] - '0')
	c := int(s[2] - '0')
	d := int(s[3] - '0')

	for _, i := range []bool{true, false} {
		for _, j := range []bool{true, false} {
			for _, k := range []bool{true, false} {
				v := a
				var opi, opj, opk string
				if i {
					v += b
					opi = "+"
				} else {
					v -= b
					opi = "-"
				}
				if j {
					v += c
					opj = "+"
				} else {
					v -= c
					opj = "-"
				}
				if k {
					v += d
					opk = "+"
				} else {
					v -= d
					opk = "-"
				}
				if v == 7 {
					printf("%d%s%d%s%d%s%d=7\n", a, opi, b, opj, c, opk, d)
					return
				}
			}
		}
	}
}

// -----------------------------------------------------------------------------
