package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
	"strings"
)

type bufReader struct {
	r   *bufio.Reader
	buf []byte
	i   int
}

var reader = &bufReader{
	bufio.NewReader(os.Stdin),
	make([]byte, 0),
	0,
}

func (r *bufReader) readLine() {
	if r.i < len(r.buf) {
		return
	}
	r.buf = make([]byte, 0)
	r.i = 0
	for {
		line, isPrefix, err := r.r.ReadLine()
		if err != nil {
			panic(err)
		}
		r.buf = append(r.buf, line...)
		if !isPrefix {
			break
		}
	}
}

func (r *bufReader) next() string {
	r.readLine()
	from := r.i
	for ; r.i < len(r.buf); r.i++ {
		if r.buf[r.i] == ' ' {
			break
		}
	}
	s := string(r.buf[from:r.i])
	r.i++
	return s
}

func (r *bufReader) nextLine() string {
	r.readLine()
	s := string(r.buf[r.i:])
	r.i = len(r.buf)
	return s
}

var writer = bufio.NewWriter(os.Stdout)

func next() string {
	return reader.next()
}

func nextInt64() int64 {
	i, err := strconv.ParseInt(reader.next(), 10, 64)
	if err != nil {
		panic(err)
	}
	return i
}

func nextInt() int {
	return int(nextInt64())
}

func nextLine() string {
	return reader.nextLine()
}

func out(a ...interface{}) {
	fmt.Fprintln(writer, a...)
}

func max64(x, y int64) int64 {
	if x > y {
		return x
	}
	return y
}

func max(x, y int) int {
	return int(max64(int64(x), int64(y)))
}

func min64(x, y int64) int64 {
	if x < y {
		return x
	}
	return y
}

func min(x, y int) int {
	return int(min64(int64(x), int64(y)))
}

func abs64(x int64) int64 {
	if x < 0 {
		return -x
	}
	return x
}

func abs(x int) int {
	return int(abs64(int64(x)))
}

func joinInt64s(a []int64, sep string) string {
	b := make([]string, len(a))
	for i, v := range a {
		b[i] = strconv.FormatInt(v, 10)
	}
	return strings.Join(b, sep)
}

func joinInts(a []int, sep string) string {
	b := make([]string, len(a))
	for i, v := range a {
		b[i] = strconv.Itoa(v)
	}
	return strings.Join(b, sep)
}

func divUp64(x, y int64) int64 {
	return (x + y - 1) / y
}

func divUp(x, y int) int {
	return int(divUp64(int64(x), int64(y)))
}

func gcd64(x, y int64) int64 {
	if x < y {
		x, y = y, x
	}
	for y != 0 {
		x, y = y, x%y
	}
	return x
}

func gcd(x, y int) int {
	return int(gcd64(int64(x), int64(y)))
}

func lcm64(x, y int64) int64 {
	return x * y / gcd64(x, y)
}

func lcm(x, y int) int {
	return int(lcm64(int64(x), int64(y)))
}

func pow64(x, y int64) int64 {
	return int64(math.Pow(float64(x), float64(y)))
}

func pow(x, y int) int {
	return int(pow64(int64(x), int64(y)))
}

func main() {
	solve()
	writer.Flush()
}

func solve() {
	n, k := nextInt(), nextInt()
	m := make(map[int]int)
	for i := 0; i < n; i++ {
		a, b := nextInt(), nextInt()
		if v, ok := m[a]; ok {
			m[a] = v + b
		} else {
			m[a] = b
		}
	}
	a := make([][]int, 0, len(m))
	for k, v := range m {
		a = append(a, []int{k, v})
	}
	sort.Sort(kvs(a))
	t := 0
	for _, v := range a {
		t += v[1]
		if k <= t {
			out(v[0])
			return
		}
	}
}

type kvs [][]int

func (a kvs) Len() int           { return len(a) }
func (a kvs) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a kvs) Less(i, j int) bool { return a[i][0] < a[j][0] }
