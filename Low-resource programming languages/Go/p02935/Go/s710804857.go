package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

type Item struct {
	priority float64
	index int
}

type PriorityQueue []*Item

func (pq PriorityQueue) Len() int { return len(pq) }

func (pq PriorityQueue) Less(i, j int) bool {
	return pq[i].priority < pq[j].priority
}

func (pq PriorityQueue) Swap(i, j int) {
	pq[i], pq[j] = pq[j], pq[i]
	pq[i].index = i
	pq[j].index = j
}

func (pq *PriorityQueue) Push(x interface{}) {
	n := len(*pq)
	item := x.(*Item)
	item.index = n
	*pq = append(*pq, item)
}

func (pq *PriorityQueue) Pop() interface{} {
	old := *pq
	n := len(old)
	item := old[n-1]
	item.index = -1 // for safety
	*pq = old[0 : n-1]
	return item
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	v := make(PriorityQueue, n)

	for i := 0; i < n; i++ {
		v[i] = &Item{
			priority: float64(nextInt()),
		}
	}

	heap.Init(&v)

	for {
		if v.Len() == 1 {
			fmt.Printf("%f", v.Pop().(*Item).priority)
			return
		}
		w1 := heap.Pop(&v).(*Item).priority
		w2 := heap.Pop(&v).(*Item).priority

		heap.Push(&v, &Item{
			priority: (w1 + w2) / 2,
		})
	}
}
