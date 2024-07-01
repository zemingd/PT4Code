package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
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
	k := readInt()
	h := make([]int64, n)
	for i := range h {
		h[i] = readInt64()
	}
	sort.Sort(sortTarget0Slice(h))

	ans := int64(math.MaxInt32)
	for i := 0; i+k-1 < n; i++ {
		m := h[i+k-1] - h[i]
		if m < ans {
			ans = m
		}
	}
	println(ans)
}

// -----------------------------------------------------------------------------

type sortTarget0Slice []int64

func (s sortTarget0Slice) Len() int {
	return len(s)
}

func (s sortTarget0Slice) Less(i, j int) bool {
	return s[i] < s[j]
}

func (s sortTarget0Slice) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}
