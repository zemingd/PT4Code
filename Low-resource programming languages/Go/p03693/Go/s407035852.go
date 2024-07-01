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
	n := readInt()
	a := make([]int, n)
	for i := range a {
		a[i] = readInt()
	}

	m := make(map[string]int)
	for _, rate := range a {
		switch {
		case rate < 400:
			m["400"]++
		case rate < 800:
			m["800"]++
		case rate < 1200:
			m["1200"]++
		case rate < 1600:
			m["1600"]++
		case rate < 2000:
			m["2000"]++
		case rate < 2400:
			m["2400"]++
		case rate < 2800:
			m["2800"]++
		case rate < 3200:
			m["3200"]++
		default:
			m["free"]++
		}
	}
	x := len(m)
	if m["free"] == 0 {
		println(x, x)
		return
	}
	if x == 1 {
		println(1, m["free"])
		return
	}
	println(x-1, x-1+m["free"])
}

// -----------------------------------------------------------------------------
