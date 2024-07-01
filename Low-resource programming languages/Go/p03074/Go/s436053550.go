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

func invert(s []byte) []byte {
	res := make([]byte, len(s))
	for i := range s {
		if s[i] == '0' {
			res[i] = '1'
		} else {
			res[i] = '0'
		}
	}
	return res
}

func main() {
	defer stdout.Flush()
	_ = readInt()
	k := readInt()
	s := []byte(readString())

	println(max(solve(s, k), solve(invert(s), k-1)))
}

func solve(s []byte, k int) int {
	b := 0
	i := 0
	for i < len(s) && s[i] == '1' {
		i++
	}
	j := i
	for p := 0; p < k; p++ {
		for j < len(s) && s[j] == '0' {
			j++
		}
		for j < len(s) && s[j] == '1' {
			j++
		}
	}
	ans := j - b
	for j < len(s) {
		for b < len(s) && s[b] == '1' {
			b++
		}
		for b < len(s) && s[b] == '0' {
			b++
		}
		for j < len(s) && s[j] == '0' {
			j++
		}
		for j < len(s) && s[j] == '1' {
			j++
		}
		tmp := j - b
		ans = max(ans, tmp)
	}
	//eprintln(ans)
	return ans
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

// -----------------------------------------------------------------------------
