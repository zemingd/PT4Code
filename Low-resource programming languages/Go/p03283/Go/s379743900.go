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

func eprintln(args ...interface{}) (int, error) {
	return fmt.Fprintln(os.Stderr, args...)
}

// readString() string
// readInt() int
// readIntSlice(n int) []int
// readLengthAndSlice() []int
func main() {
	defer stdout.Flush()

	N := readInt()
	M := readInt()
	Q := readInt()

	f := make([][]int, 510)
	for i := range f {
		f[i] = make([]int, 510)
	}
	for i := 0; i < M; i++ {
		l := readInt()
		r := readInt()
		f[l][r]++
	}

	for i := 1; i <= N; i++ {
		for j := 1; j <= N; j++ {
			f[i][j] += f[i][j-1]
		}
	}
	for i := N; i > 0; i-- {
		for j := 1; j <= N; j++ {
			f[i][j] += f[i+1][j]
		}
	}

	for i := 0; i < Q; i++ {
		l := readInt()
		r := readInt()
		println(f[l][r])
	}

}
