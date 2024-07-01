package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"io"
	"os"
	"sort"
	"strconv"
)

var sc *bufio.Scanner

const BufferSize = 1024

func nextInt() int {
	if !sc.Scan() {
		panic(nil)
	}
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

var production bool

func debugf(format string, v ...interface{}) {
	if !production {
		fmt.Printf(format, v...)
	}
}

type bc struct {
	num   int
	value int
}

type bcs []bc

func (b bcs) Len() int { return len(b) }
func (b bcs) Less(i, j int) bool {
	if b[i].num != b[j].num {
		return b[i].num < b[j].num
	}
	return b[i].value > b[j].value
}
func (b bcs) Swap(i, j int) { b[i], b[j] = b[j], b[i] }

// An IntHeap is a min-heap of ints.
type IntHeap []int

func (h IntHeap) Len() int           { return len(h) }
func (h IntHeap) Less(i, j int) bool { return h[i] > h[j] }
func (h IntHeap) Swap(i, j int)      { h[i], h[j] = h[j], h[i] }

func (h *IntHeap) Push(x interface{}) {
	// Push and Pop use pointer receivers because they modify the slice's length,
	// not just its contents.
	*h = append(*h, x.(int))
}

func (h *IntHeap) Pop() interface{} {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[0 : n-1]
	return x
}

func answer(reader io.Reader, writer io.Writer) {
	sc = bufio.NewScanner(reader)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, 1e+6)
	sc.Split(bufio.ScanWords)
	n := nextInt()
	m := nextInt()
	a := make([]bc, n)

	for i := range a {
		a[i].num = nextInt()
		a[i].value = nextInt()
	}
	sort.Sort(bcs(a))
	//debugf("%v\n", a)
	idx := 0
	ans := 0

	h := &IntHeap{}
	heap.Init(h)

	//debugf("%v\n", a)
	for i := 0; i < m; i++ {
		for idx < n && a[idx].num <= i+1 {
			heap.Push(h, a[idx].value)
			idx++
		}
		if h.Len() > 0 {
			n := heap.Pop(h)
			ans += n.(int)
		}
		//debugf("end i: %d, ans: %d, %v\n", i, ans, b.String())
	}

	_, _ = fmt.Fprintf(writer, "%d", ans)
}

func main() {
	production = true
	answer(os.Stdin, os.Stdout)
}
