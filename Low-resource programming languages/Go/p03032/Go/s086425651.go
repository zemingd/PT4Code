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
	readBytes  func() []byte
	stdout     *bufio.Writer
)

func init() {
	readString, readBytes = newReadString(os.Stdin)
	stdout = bufio.NewWriter(os.Stdout)
}

func newReadString(ior io.Reader) (func() string, func() []byte) {
	r := bufio.NewScanner(ior)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)

	f1 := func() string {
		if !r.Scan() {
			panic("Scan failed")
		}
		return r.Text()
	}
	f2 := func() []byte {
		if !r.Scan() {
			panic("Scan failed")
		}
		return r.Bytes()
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
	N := readInt()
	K := readInt()
	V := make([]int, N)
	for i := range V {
		V[i] = readInt()
	}

	L := make([]int, K+1)
	R := make([]int, K+1)

	//eprintln(V)
	for i := range L {
		L[i] = dfs(V, 0, i, 0)
		//eprintln("L", i, L[i])
	}
	for i, j := 0, len(V)-1; i < j; i, j = i+1, j-1 {
		V[i], V[j] = V[j], V[i]
	}
	for i := range R {
		R[i] = dfs(V, 0, i, 0)
		//eprintln("R", i, R[i])
	}
	//eprintln("L", L)
	//eprintln("R", R)

	var ans int
	for i := range R {
		j := K - i
		ans = max(ans, L[i]+R[j])
	}
	println(ans)

}

func dfs(V []int, i, k, p int) int {
	//eprintln("dfs", i, k, p)
	if k <= 0 {
		return p
	}
	if len(V) <= i {
		return p
	}
	res := dfs(V, i+1, k-1, p+V[i])
	if V[i] < 0 && 2 <= k {
		res = max(res, dfs(V, i+1, k-2, p))
	}
	return res
}

// -----------------------------------------------------------------------------
