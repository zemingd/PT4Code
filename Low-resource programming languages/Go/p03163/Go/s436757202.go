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
	W := readInt()
	w := make([]int, n+1)
	v := make([]int64, n+1)
	for i := 1; i <= n; i++ {
		w[i] = readInt()
		v[i] = readInt64()
	}
	dp := make([][]int64, n+1)
	for i := range dp {
		dp[i] = make([]int64, W+1)
	}

	for i := 1; i <= n; i++ {
		for j := 0; j <= W; j++ {
			dp[i][j] = dp[i-1][j]
			k := j - w[i]
			if 0 <= k {
				dp[i][j] = max(dp[i][j], dp[i-1][k]+v[i])
			}
		}
	}
	//for i := range dp {
	//	eprintln(dp[i])
	//}
	println(dp[n][W])
}

// -----------------------------------------------------------------------------

func max(a, b int64) int64 {
	if a < b {
		return b
	}
	return a
}
