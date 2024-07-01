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

func eprintf(f string, args ...interface{}) (int, error) {
	return fmt.Fprintf(os.Stderr, f, args...)
}

// readString() string
// readInt() int
// readIntSlice(n int) []int
// readLengthAndSlice() []int

// -----------------------------------------------------------------------------

func main() {
	defer stdout.Flush()
	n := readInt()
	a := make([]int64, n)
	for i := range a {
		a[i] = readInt64()
	}

	g := a[0]
	for i := 1; i < n; i++ {
		g = gcd(g, a[i])
	}

	for i := range a {
		a[i] /= g
	}

	candidate := make([]int, 0)
	var added bool
	for i := 0; i < n-1; i++ {
		v := gcd(a[i], a[i]+1)
		if v == 1 {
			if added {
				candidate = append(candidate, i+1)
			} else {
				candidate = append(candidate, i, i+1)
			}
			added = true
		} else {
			added = false
		}
	}
	if len(candidate) > 3 {
		println(g)
		return
	}

	var ans int64
	for _, j := range candidate {
		var h int64
		for i := 0; i < n; i++ {
			if i == j {
				continue
			}
			if h == 0 {
				h = a[i]
				continue
			}
			h = gcd(h, a[i])
		}
		if ans < h {
			ans = h
		}
	}
	println(ans * g)
}

func gcd(a, b int64) int64 {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

// -----------------------------------------------------------------------------
