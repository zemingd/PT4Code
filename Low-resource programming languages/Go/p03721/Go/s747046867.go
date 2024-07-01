package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"sort"
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
	K := readInt()
	p := make([]Pair, N)
	for i := range p {
		p[i].a = readInt()
		p[i].b = readInt()
	}
	sort.Sort(PairSlice(p))
	i := 0
	j := 0
	for ; i < N && j+p[i].b < K; i++ {
		j += p[i].b
	}
	println(p[i].a)
}

type Pair struct {
	a, b int
}

type PairSlice []Pair

func (pq PairSlice) Len() int {
	return len(pq)
}

func (pq PairSlice) Less(i, j int) bool {
	return pq[i].a < pq[j].a
}

func (pq PairSlice) Swap(i, j int) {
	pq[i], pq[j] = pq[j], pq[i]
}
