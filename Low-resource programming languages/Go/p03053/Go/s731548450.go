package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
	"strconv"
)

var (
	readString func() string
	readBytes  func() []byte
	stdout     *bufio.Writer
)

func init() {
	readString, readBytes = newReadString(os.Stdin)
	stdout = bufio.NewWriter(os.Stdout)
}

func newReadString(ior io.Reader) (func() string, func() []byte) {
	r := bufio.NewScanner(ior)
	r.Buffer(make([]byte, 1024), math.MaxInt32)
	r.Split(bufio.ScanWords)

	f1 := func() string {
		if !r.Scan() {
			panic("Scan failed")
		}
		return r.Text()
	}
	f2 := func() []byte {
		return []byte(f1())
	}
	return f1, f2
}

func readInt() int {
	return int(readInt64())
}

func readInt64() int64 {
	i, err := strconv.ParseInt(readString(), 10, 64)
	if err != nil {
		panic(err.Error())
	}
	return i
}

func readFloat64() float64 {
	f, err := strconv.ParseFloat(readString(), 64)
	if err != nil {
		panic(err.Error())
	}
	return f
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

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func min64(a, b int64) int64 {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func max64(a, b int64) int64 {
	if a < b {
		return b
	}
	return a
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func abs64(a int64) int64 {
	if a < 0 {
		return -a
	}
	return a
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func gcd64(a, b int64) int64 {
	if b == 0 {
		return a
	}
	return gcd64(b, a%b)
}

// readString() string
// readInt() int
// readInt64() int64
// readFloat64() float64

// -----------------------------------------------------------------------------

func main() {
	defer stdout.Flush()
	H := readInt() + 2
	W := readInt() + 2
	A := make([][]byte, H)
	dist := make([][]int, H)
	for i := range A {
		A[i] = append(A[i], 'x')
		if i == 0 || i == H-1 {
			for j := 0; j < W-2; j++ {
				A[i] = append(A[i], 'x')
			}
		} else {
			A[i] = append(A[i], readBytes()...)
		}
		A[i] = append(A[i], 'x')
		dist[i] = make([]int, W)
		for j := range dist[i] {
			if A[i][j] == '#' {
				dist[i][j] = 0
			} else {
				dist[i][j] = H + W
			}
		}
	}

	for i := 1; i < H-1; i++ {
		for j := 1; j < W-1; j++ {
			dist[i][j] = min(dist[i][j], dist[i-1][j]+1)
			dist[i][j] = min(dist[i][j], dist[i][j-1]+1)
		}
	}
	for i := H - 2; 0 < i; i-- {
		for j := W - 2; 0 < j; j-- {
			dist[i][j] = min(dist[i][j], dist[i+1][j]+1)
			dist[i][j] = min(dist[i][j], dist[i][j+1]+1)
		}
	}
	var ans int
	for i := 1; i < H-1; i++ {
		for j := 1; j < W-1; j++ {
			ans = max(ans, dist[i][j])
		}
	}
	println(ans)
}

// -----------------------------------------------------------------------------
