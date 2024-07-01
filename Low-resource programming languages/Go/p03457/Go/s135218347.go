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

// readString() string
// readInt() int
// readIntSlice(n int) []int
// readLengthAndSlice() []int
func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func dist(x1, y1, x2, y2 int) int {
	return abs(x2-x1) + abs(y2-y1)
}

func main() {
	defer stdout.Flush()
	n := readInt()
	t := 0
	x := 0
	y := 0
	for i := 0; i < n; i++ {
		nt := readInt()
		nx := readInt()
		ny := readInt()

		d := dist(x, y, nx, ny)
		dt := nt - t
		if d > dt || d%2 != dt%2 {
			println("No")
			return
		}
		t = nt
		x = nx
		y = ny
	}
	println("Yes")
}
