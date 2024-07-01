package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"sort"
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
	x := readInt()
	y := readInt()
	z := readInt()
	k := readInt()
	a := make([]int64, x)
	b := make([]int64, y)
	c := make([]int64, z)

	for i := range a {
		a[i] = readInt64()
	}
	for i := range b {
		b[i] = readInt64()
	}
	for i := range c {
		c[i] = readInt64()
	}

	d := make([]int64, x*y)
	i := 0
	for _, v := range a {
		for _, w := range b {
			d[i] = v + w
			i++
		}
	}
	sort.Sort(sortTarget0Slice(d))
	if k < len(d) {
		d = d[:k]
	}
	e := make([]int64, len(d)*len(c))
	i = 0
	for _, v := range c {
		for _, w := range d {
			e[i] = v + w
			i++
		}
	}
	sort.Sort(sortTarget0Slice(e))
	for i := 0; i < k; i++ {
		println(e[i])
	}
}

// -----------------------------------------------------------------------------
type sortTarget0Slice []int64

func (s sortTarget0Slice) Len() int {
	return len(s)
}

func (s sortTarget0Slice) Less(i, j int) bool {
	return s[i] > s[j]
}

func (s sortTarget0Slice) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}
