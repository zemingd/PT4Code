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
func rev(a []int) []int {
	for i, j := 0, len(a)-1; i < j; i, j = i+1, j-1 {
		a[i], a[j] = a[j], a[i]
	}
	return a
}

func main() {
	defer stdout.Flush()
	n := readInt()
	a := make([][]int, 2)
	a[0] = make([]int, 0, n)
	a[1] = make([]int, 0, n)
	for i, j := 0, 0; i < n; i, j = i+1, 1-j {
		a[j] = append(a[j], readInt())
	}
	ans := append(rev(a[1]), a[0]...)
	if n%2 != 0 {
		rev(ans)
	}
	sp := ""
	for _, v := range ans {
		printf("%s%d", sp, v)
		sp = " "
	}
	println()
}
