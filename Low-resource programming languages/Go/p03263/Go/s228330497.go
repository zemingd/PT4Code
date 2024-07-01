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

// readString() string
// readInt() int
// readIntSlice(n int) []int
// readLengthAndSlice() []int

// -----------------------------------------------------------------------------

func main() {
	defer stdout.Flush()
	H := readInt()
	W := readInt()

	a := make([][]int, H)
	for i := range a {
		a[i] = make([]int, W)
		for j := range a[i] {
			a[i][j] = readInt() % 2
		}
	}

	x1 := make([]int, 0, H*W)
	y1 := make([]int, 0, H*W)
	x2 := make([]int, 0, H*W)
	y2 := make([]int, 0, H*W)
	pi := 0
	pj := 0
	for i := 0; i < H; i++ {
		if i%2 == 0 {
			for j := 0; j < W; j++ {
				if i == 0 && j == 0 {
					continue
				}
				if a[pi][pj] == 1 {
					x1 = append(x1, pi)
					y1 = append(y1, pj)
					x2 = append(x2, i)
					y2 = append(y2, j)
					a[i][j] = (a[i][j] + a[pi][pj]) % 2
					a[pi][pj] = 0
				}
				pi, pj = i, j
			}
		} else {
			for j := W - 1; j >= 0; j-- {
				if a[pi][pj] == 1 {
					x1 = append(x1, pi)
					y1 = append(y1, pj)
					x2 = append(x2, i)
					y2 = append(y2, j)
					a[i][j] = (a[i][j] + a[pi][pj]) % 2
					a[pi][pj] = 0
				}
				pi, pj = i, j
			}
		}

	}
	println(len(x1))
	for i := range x1 {
		println(x1[i]+1, y1[i]+1, x2[i]+1, y2[i]+1)
	}

}

// -----------------------------------------------------------------------------
