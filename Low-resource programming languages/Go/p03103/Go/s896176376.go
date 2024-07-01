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
	n := readInt()
	m := readInt64()
	d := make([]sortTarget0, n)
	for i := range d {
		d[i].a = readInt64()
		d[i].b = readInt64()
	}

	sort.Sort(sortTarget0Slice(d))
	var ans int64
	for i := 0; i < len(d) && m > 0; i++ {
		b := minInt64(d[i].b, m)
		ans += d[i].a * b
		m -= b
	}
	println(ans)

}

// -----------------------------------------------------------------------------

type sortTarget0 struct {
	a int64
	b int64
}

type sortTarget0Slice []sortTarget0

func (s sortTarget0Slice) Len() int {
	return len(s)
}

func (s sortTarget0Slice) Less(i, j int) bool {
	return s[i].a < s[j].a
}

func (s sortTarget0Slice) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}

func minInt(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func minUint(a, b uint) uint {
	if a < b {
		return a
	}
	return b
}

func minInt64(a, b int64) int64 {
	if a < b {
		return a
	}
	return b
}

func minUint64(a, b uint64) uint64 {
	if a < b {
		return a
	}
	return b
}

func maxInt(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func maxUint(a, b uint) uint {
	if a < b {
		return b
	}
	return a
}
func maxInt64(a, b int64) int64 {
	if a < b {
		return b
	}
	return a
}

func maxUint64(a, b uint64) uint64 {
	if a < b {
		return b
	}
	return a
}

func absInt(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func absInt64(a int64) int64 {
	if a < 0 {
		return -a
	}
	return a
}
