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
	i, err := strconv.Atoi(readString())
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

func vi(n int, args ...int) []int {
	res := make([]int, n)
	if len(args) == 0 {
		return res
	}
	v := args[0]
	if v == 0 {
		return res
	}
	for i := 0; i < n; i++ {
		res[i] = v
	}
	return res
}

func vvi(n int, args ...int) [][]int {
	res := make([][]int, n)
	m := n
	if len(args) > 0 {
		m = args[0]
	}
	v := 0
	if len(args) > 1 {
		v = args[1]
	}
	for i := 0; i < n; i++ {
		res[i] = vi(m, v)
	}
	return res
}

func main() {
	defer stdout.Flush()

	// readString() string
	// readInt() int
	// readIntSlice(n int) []int
	// readLengthAndSlice() []int

	d := readInt()
	n := readInt()

	b := 1
	for i := 0; i < d; i++ {
		b *= 100
	}
	if n == 100 {
		n++
	}
	println(n * b)
}
