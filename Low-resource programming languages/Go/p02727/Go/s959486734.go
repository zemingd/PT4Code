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

var (
	rb     rdBuffer
	reader *bufio.Reader
	writer *bufio.Writer
)

func solve() {
	x, y, _, _, _ := rb.nextInt(), rb.nextInt(), rb.nextInt(), rb.nextInt(), rb.nextInt()
	p, q, r := rb.nextInts(), rb.nextInts(), rb.nextInts()

	sort.Sort(sort.Reverse(sort.IntSlice(p)))
	sort.Sort(sort.Reverse(sort.IntSlice(q)))
	sort.Sort(sort.Reverse(sort.IntSlice(r)))
	p = p[:x]
	p = append(p, q[:y]...)
	p = append(p, r...)
	sort.Sort(sort.Reverse(sort.IntSlice(p)))
	sum := 0
	for i := 0; i < x+y; i++ {
		sum += p[i]
	}
	writer.WriteString(strconv.Itoa(sum) + "\n")
}

/* template functions */

func main() {
	defer writer.Flush()
	solve()
}

func init() {
	rb = rdBuffer{
		buf: make([]string, 0, 64),
		cur: 0,
	}
	reader = bufio.NewReader(os.Stdin)
	writer = bufio.NewWriter(os.Stdout)
}

type rdBuffer struct {
	buf []string
	cur int
}

func (r *rdBuffer) readln() {
	line, err := reader.ReadString('\n')
	if err != nil {
		panic(err)
	}

	drop := 1
	if len(line) > 1 && line[len(line)-2] == '\r' {
		drop = 2
	}
	line = line[:len(line)-drop]

	r.cur = 0
	r.buf = strings.Split(line, " ")
}

func (r *rdBuffer) isFull() bool {
	if r.cur == len(r.buf) {
		return true
	}
	return false
}

func (r *rdBuffer) resetCur() {
	r.cur = 0
}

func (r *rdBuffer) next() string {
	if r.cur == 0 {
		r.readln()
	}
	res := r.buf[r.cur]
	r.cur++
	if r.isFull() {
		r.resetCur()
	}
	return res
}

func (r *rdBuffer) nexts() []string {
	r.readln()
	r.resetCur()
	return r.buf
}

func (r *rdBuffer) nextByte() byte {
	if r.cur == 0 {
		r.readln()
	}
	res := r.buf[r.cur][0]
	r.cur++
	if r.isFull() {
		r.resetCur()
	}
	return res
}

func (r *rdBuffer) nextInt() int {
	if r.cur == 0 {
		r.readln()
	}
	res, _ := strconv.Atoi(r.buf[r.cur])
	r.cur++
	if r.isFull() {
		r.resetCur()
	}
	return res
}

func (r *rdBuffer) nextInts() []int {
	r.readln()
	res := make([]int, len(r.buf))
	for i, _ := range r.buf {
		res[i], _ = strconv.Atoi(r.buf[i])
	}
	r.resetCur()
	return res
}

func (r *rdBuffer) nextFloat() float64 {
	if r.cur == 0 {
		r.readln()
	}
	res, _ := strconv.ParseFloat(r.buf[r.cur], 64)
	r.cur++
	if r.isFull() {
		r.resetCur()
	}
	return res
}

func (r *rdBuffer) nextFloats() []float64 {
	r.readln()
	res := make([]float64, len(r.buf))
	for i, _ := range r.buf {
		res[i], _ = strconv.ParseFloat(r.buf[i], 64)
	}
	r.resetCur()
	return res
}

func _max(x, y int) int {
	return int(math.Max(float64(x), float64(y)))
}

func _min(x, y int) int {
	return int(math.Min(float64(x), float64(y)))
}

func _abs(x int) int {
	return int(math.Abs(float64(x)))
}

// Searchable
// idx := lower_bound([]int{-199, -1, 0, 2, 4, 67, 100, 8435}, 60)
// => idx = 5
//
// No present
// idx := lower_bound([]int{-199, -1, 0, 2, 4, 67, 100, 8435}, 10000)
// => idx = 8
func lower_bound(a []int, x int) int {
	return sort.SearchInts(a, x)
}

func dump(value ...interface{}) {
	for _, v := range value {
		fmt.Fprintf(os.Stderr, "%#v\n", v)
	}
}

func Yes() {
	writer.WriteString("Yes\n")
}

func yes() {
	writer.WriteString("yes\n")
}

func No() {
	writer.WriteString("No\n")
}

func no() {
	writer.WriteString("no\n")
}
