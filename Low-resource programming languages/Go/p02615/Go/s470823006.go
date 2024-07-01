package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"os"
	"sort"
)

type IntHeap []int

func (h IntHeap) Len() int           { return len(h) }
func (h IntHeap) Less(i, j int) bool { return h[i] > h[j] }
func (h IntHeap) Swap(i, j int)      { h[i], h[j] = h[j], h[i] }

func (h *IntHeap) Push(x interface{}) {
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
	var n int
	fmt.Fscan(r, &n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Fscan(r, &a[i])
	}
	sort.Sort(sort.Reverse(sort.IntSlice(a)))
	h := make(IntHeap, n)
	heap.Init(&h)
	heap.Push(&h, a[0])
	var ans int64
	for i := 1; i < n; i++ {
		v := heap.Pop(&h).(int)
		ans += int64(v)
		heap.Push(&h, a[i])
		heap.Push(&h, a[i])
	}
	fmt.Println(ans)
}
