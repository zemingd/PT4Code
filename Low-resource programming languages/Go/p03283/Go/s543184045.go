package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
	"strconv"
)

// const abcd = "abcdefghijklmnopqrstuvwxyz"
// const ABCD = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
// var dx = [...]int{0, 1, 1, 1, 0, -1, -1, -1, 0}
// var dy = [...]int{1, 1, 0, -1, -1, -1, 0, 1, 0}

var inf = math.MaxInt64

// var mod = 1000000007
// var next = newScanner()

var (
	readString func() string
	stdout     *bufio.Writer
)

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

// ---------------------------------------------------------

func init() {
	// readString = newReadString(os.Stdin)
	stdout = bufio.NewWriter(os.Stdout)
}
func main() {
	defer stdout.Flush()
	N := readInt()
	M := readInt()
	Q := readInt()
	data := make([][]int, 510)
	for i := 0; i < len(data); i++ {
		data[i] = make([]int, 510)
	}
	for i := 0; i < M; i++ {
		l, r := readInt(), readInt()
		data[l][r]++
	}
	for i := 0; i < N+1; i++ {
		for j := 1; j < N+1; j++ {
			data[i][j] += data[i][j-1]
		}
	}
	for i := N; i > 0; i-- {
		for j := 1; j < N+1; j++ {
			data[i][j] += data[i+1][j]
		}
	}

	for i := 0; i < Q; i++ {
		p, q := readInt(), readInt()
		fmt.Println(data[p][q])
	}
}