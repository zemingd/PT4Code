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

	var ans int
	var rec func(a, d int, used [8]bool) int
	rec = func(a, d int, used [8]bool) int {
		if n < a {
			return 0
		}
		if d == 0 {
			if used[3] && used[5] && used[7] {
				return 1
			} else {
				return 0
			}

		}
		var res int
		for _, x := range []int{3, 5, 7} {
			saved := used[x]
			used[x] = true
			res += rec(a+x*d, d/10, used)
			used[x] = saved
		}
		return res
	}
	d := 100
	v := 1
	for v != 0 {
		var used [8]bool
		v = rec(0, d, used)
		ans += v
		d *= 10
	}

	println(ans)
}

// -----------------------------------------------------------------------------
