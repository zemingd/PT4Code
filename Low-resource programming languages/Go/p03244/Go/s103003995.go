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
	n, v := readLengthAndSlice()
	m := make([]map[int]int, 3)
	m[0] = make(map[int]int)
	m[1] = make(map[int]int)
	m[2] = make(map[int]int)
	i := 0
	for _, x := range v {
		m[i][x]++
		m[2][x]++
		i = 1 - i
	}

	if len(m[2]) == 1 {
		println(n / 2)
		return
	}
	count := make([][]sortTarget0, 2)
	for i := 0; i < 2; i++ {
		for x, c := range m[i] {
			count[i] = append(count[i], sortTarget0{x, c})
		}
		sort.Sort(sortTarget0Slice(count[i]))
	}
	// (1, 100), (2, 50)
	// (1, 99), (2, 2)
	c := count[0][0].count + count[1][0].count
	if count[0][0].val == count[1][0].val {
		if len(count[0]) == 1 {
			c = count[0][0].count + count[1][1].count
		} else if len(count[1]) == 1 {
			c = count[0][1].count + count[1][0].count
		} else {
			a := count[0][0].count + count[1][1].count
			b := count[0][1].count + count[1][0].count
			if a < b {
				c = b
			} else {
				c = a
			}
		}
	}
	println(n - c)
}

// -----------------------------------------------------------------------------

type sortTarget0 struct {
	val, count int
}

type sortTarget0Slice []sortTarget0

func (s sortTarget0Slice) Len() int {
	return len(s)
}

func (s sortTarget0Slice) Less(i, j int) bool {
	return s[i].count > s[j].count
}

func (s sortTarget0Slice) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}
