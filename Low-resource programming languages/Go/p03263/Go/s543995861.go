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
	h := readInt()
	w := readInt()
	a := make([][]int, h)
	for i := range a {
		a[i] = make([]int, w)
		for j := range a[i] {
			a[i][j] = readInt() % 2
		}
	}
	pi := 0
	pj := 0
	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			if i == 0 && j == 0 {
				continue
			}
			if a[pi][pj] == 1 {
				println(pi+1, pj+1, i+1, j+1)
				a[i][j] = (a[i][j] + a[pi][pj]) % 2
			}
			pi = i
			pj = j
		}
		i++
		if h <= i {
			break
		}
		for j := w - 1; j >= 0; j-- {
			if a[pi][pj] == 1 {
				println(pi+1, pj+1, i+1, j+1)
				a[i][j] = (a[i][j] + a[pi][pj]) % 2
			}
			pi = i
			pj = j
		}
	}
}

// -----------------------------------------------------------------------------
