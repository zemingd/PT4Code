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
	s := readString()
	k := readInt()
	m := make(map[string]bool)
	for i := 1; i <= k; i++ {
		for j := 0; j+i <= len(s); j++ {
			m[s[j:j+i]] = true
		}
	}

	a := make([]string, 0, len(m))
	for w := range m {
		a = append(a, w)
	}
	sort.Strings(a)
	println(a[k-1])
}

// -----------------------------------------------------------------------------
