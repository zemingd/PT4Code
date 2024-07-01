package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
	"strings"
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

func isHeisei(y, m, d int) bool {
	if y < 2019 {
		return true
	}
	if y > 2019 {
		return false
	}

	if m < 4 {
		return true
	}
	if m > 4 {
		return false
	}

	if d < 31 {
		return true
	}
	return false
}

func main() {
	defer stdout.Flush()

	ds := strings.Split(readString(), "/")
	y, _ := strconv.Atoi(ds[0])
	m, _ := strconv.Atoi(ds[1])
	d, _ := strconv.Atoi(ds[2])
	if isHeisei(y, m, d) {
		println("Heisei")
	} else {
		println("TBD")
	}
}

// -----------------------------------------------------------------------------
