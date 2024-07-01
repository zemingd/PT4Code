package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var (
	N int
	A []int
)

func main() {
	defer writer.Flush()
	readVariables()
	sort.Slice(A, func(i, j int) bool {
		return A[i] > A[j]
	})
	q := NewIntPriorityQueue(func(x, y int) bool {
		return x > y
	})
	heap.Push(q, A[0])
	var answer int
	for i := 1; i < N; i++ {
		v := heap.Pop(q).(int)
		answer += v
		next := MinInt(v, A[i])
		heap.Push(q, next)
		heap.Push(q, next) // 2回追加する
	}
	println(answer)
}

func readVariables() {
	N = nextInt()
	A = make([]int, N)
	for i := 0; i < N; i++ {
		A[i] = nextInt()
	}

}

/* Template */

var (
	scanner *bufio.Scanner
	writer  *bufio.Writer
)

func init() {
	Max := 1001001
	scanner = bufio.NewScanner(os.Stdin)
	scanner.Buffer(make([]byte, 0, Max), Max)
	scanner.Split(bufio.ScanWords)
	writer = bufio.NewWriterSize(os.Stdout, Max)
}

func println(a ...interface{}) {
	fmt.Fprintln(writer, a...)
}

func printf(format string, a ...interface{}) {
	fmt.Fprintf(writer, format, a...)
}

//nextInt converts next token from stdin and returns integer value.
//nextInt panics when conversion into an integer fails.
func nextInt() int {
	if !scanner.Scan() {
		panic("No more token.")
	}
	num, err := strconv.Atoi(scanner.Text())
	if err != nil {
		panic("nextInt(): cannot convert to int: " + scanner.Text())
	}
	return num
}

func nextStr() string {
	if !scanner.Scan() {
		panic("No more token.")
	}
	return scanner.Text()
}

// MinInt returns minimum argument
func MinInt(x, y int) int {
	if x < y {
		return x
	} else {
		return y
	}
}

//MaxInt returns maximum argument
func MaxInt(x, y int) int {
	if x < y {
		return y
	} else {
		return x
	}
}

//AbsInt returns |x| for x
func AbsInt(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

// IntPriorityQueue は、整数値の優先度付きキューを表す。
type IntPriorityQueue struct {
	values  []int
	lessVal func(x, y int) bool // indexではなく値を比較するless関数
}

// NewIntPriorityQueue は、引数のless関数で整数値を比較するIntPriorityQueueを生成する。
func NewIntPriorityQueue(lessVal func(x, y int) bool) *IntPriorityQueue {
	q := &IntPriorityQueue{
		values:  make([]int, 0),
		lessVal: lessVal,
	}
	heap.Init(q)
	return q
}

// Len は、要素数を返す。
func (q *IntPriorityQueue) Len() int {
	return len(q.values)
}

// Less は、比較関数
func (q *IntPriorityQueue) Less(i, j int) bool {
	return q.lessVal(q.values[i], q.values[j])
}

// Swap は、要素をスワップする
func (q *IntPriorityQueue) Swap(i, j int) {
	q.values[i], q.values[j] = q.values[j], q.values[i]
}

// Pop pops elem
func (q *IntPriorityQueue) Pop() interface{} {
	v := q.values[q.Len()-1]
	q.values = q.values[0 : q.Len()-1]
	return v
}

func (q *IntPriorityQueue) Push(x interface{}) {
	v := x.(int)
	q.values = append(q.values, v)
}
