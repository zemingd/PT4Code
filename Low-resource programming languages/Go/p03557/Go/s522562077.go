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

func readLengthAndSlice() []int {
	n := readInt()
	return readIntSlice(n)
}

func printf(f string, args ...interface{}) (int, error) {
	return fmt.Fprintf(stdout, f, args...)
}

func println(args ...interface{}) (int, error) {
	return fmt.Fprintln(stdout, args...)
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

// readString() string
// readInt() int
// readIntSlice(n int) []int
// readLengthAndSlice() []int
func main() {
	defer stdout.Flush()

	n := readInt()
	a := make([]int, n)
	for i := range a {
		a[i] = readInt()
	}
	sort.Ints(a)
	b := make([]int, n)
	for i := range b {
		b[i] = readInt()
	}
	sort.Ints(b)
	c := make([]int, n)
	for i := range c {
		c[i] = readInt()
	}
	sort.Ints(c)

	dp1 := make([]int, n)
	var j int
	for i := 0; i < n; i++ {
		for j < n && a[j] < b[i] {
			j++
		}
		dp1[i] = j
	}

	var ans int64
	dp2 := make([]int64, n)
	j = 0
	for i := 0; i < n; i++ {
		if 0 < i {
			dp2[i] = dp2[i-1]
		}
		for j < n && b[j] < c[i] {
			dp2[i] += int64(dp1[j])
			j++
		}
		ans += dp2[i]
	}
	println(ans)
}
