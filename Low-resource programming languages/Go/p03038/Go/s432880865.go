package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"os"
)

// An IntHeap is a min-heap of ints.
type IntHeap []int

func (h IntHeap) Len() int           { return len(h) }
func (h IntHeap) Less(i, j int) bool { return h[i] < h[j] }
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

func main() {
	r := bufio.NewReader(os.Stdin)
	var n, m int
	fmt.Fscan(r, &n, &m)
	a := new(IntHeap)
	for i := 0; i < n; i++ {
		var aa int
		fmt.Fscan(r, &aa)
		a.Push(aa)
	}
	heap.Init(a)
	for i := 0; i < m; i++ {
		var b, c int
		fmt.Fscan(r, &b, &c)
		for j := 0; j < b; j++ {
			if (*a)[0] < c {
				(*a)[0] = c
				heap.Fix(a, 0)
			}
		}
	}

	var max int
	for _, aa := range *a {
		max += aa
	}
	fmt.Println(max)
}
