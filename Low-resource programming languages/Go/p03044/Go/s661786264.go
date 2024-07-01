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
	i, err := strconv.ParseInt(readString(), 0, 64)
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

// readString() string
// readInt() int
// readInt64() int64
// readFloat64() float64

// -----------------------------------------------------------------------------

func main() {
	defer stdout.Flush()
	N := readInt()

	G := make([][]Edge, N)
	for i := 0; i < N-1; i++ {
		u := readInt() - 1
		v := readInt() - 1
		w := readInt()
		G[u] = append(G[u], Edge{v, w})
		G[v] = append(G[v], Edge{u, w})
	}

	C := make([]int, N)
	for i := range C {
		C[i] = -1
	}

	dfs(C, G, 0, 0)

	for _, c := range C {
		println(c)
	}
}

func dfs(C []int, G [][]Edge, n, c int) {
	C[n] = c
	for _, e := range G[n] {
		v := e.to
		w := e.cost
		if C[v] != -1 {
			continue
		}
		if w%2 == 0 {
			dfs(C, G, v, c)
		} else {
			dfs(C, G, v, 1-c)
		}
	}
}

type Edge struct {
	to, cost int
}

// -----------------------------------------------------------------------------
