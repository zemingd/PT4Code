package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"os"
	"strconv"
)

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

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	N, _ := strconv.Atoi(sc.Text())

	sc.Scan()
	M, _ := strconv.Atoi(sc.Text())

	works := make(map[int][]int)
	for i := 0; i < N; i++ {
		sc.Scan()
		a, _ := strconv.Atoi(sc.Text())

		sc.Scan()
		b, _ := strconv.Atoi(sc.Text())

		if _, ok := works[a]; !ok {
			works[a] = make([]int, 0)
		}
		works[a] = append(works[a], b)
	}

	result := 0
	h := &IntHeap{}
	heap.Init(h)
	for i := 1; i < M+1; i++ {
		if _, ok := works[i]; ok {
			for j := 0; j < len(works[i]); j++ {
				heap.Push(h, works[i][j])
			}
		}

		if h.Len() > 0 {
			result += heap.Pop(h).(int)
		}
	}
	fmt.Println(result)
}
