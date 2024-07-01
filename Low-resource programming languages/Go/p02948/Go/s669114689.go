package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"io"
	"os"
	"strconv"
)

var scan *bufio.Scanner
var writer io.Writer

func init() {
	scan = bufio.NewScanner(os.Stdin)
	writer = os.Stdout
	scan.Split(bufio.ScanWords)
}

func main() {
	solve()
}

// An IntHeap is a heap of ints.
type IntHeap []int

func (h IntHeap) Len() int           { return len(h) }
func (h IntHeap) Less(i, j int) bool { return h[i] > h[j] }
func (h IntHeap) Swap(i, j int)      { h[i], h[j] = h[j], h[i] }

//Push is push
func (h *IntHeap) Push(x interface{}) {
	// Push and Pop use pointer receivers because they modify the slice's length,
	// not just its contents.
	*h = append(*h, x.(int))
}

// Pop is pop
func (h *IntHeap) Pop() interface{} {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[0 : n-1]
	return x
}

func solve() {
	n, m := nextInt(), nextInt()
	jobs := make([][]int, m)
	res := 0
	for i := 0; i < n; i++ {
		a, b := nextInt(), nextInt()
		if a <= m {
			jobs[m-a] = append(jobs[m-a], b)
		}
	}
	q := &IntHeap{}
	for i := m - 1; i >= 0; i-- {
		heap.Init(q)
		for _, b := range jobs[i] {
			heap.Push(q, b)
		}
		if q.Len() > 0 {
			res += heap.Pop(q).(int)
		}
	}
	fmt.Fprint(writer, res)
}

func nextWord() string {
	scan.Scan()
	str := scan.Text()
	return str
}

func nextInt() int {
	i, e := strconv.Atoi(nextWord())
	if e != nil {
		panic(e)
	}
	return i
}
