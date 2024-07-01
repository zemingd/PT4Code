package main

import (
	"container/heap"
	"fmt"
)

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	pq := make(PriorityQueue, n)
	var a int
	for i := 0; i < n; i++ {
		fmt.Scan(&a)
		pq[i] = &Item{number: a, count: 1}
	}
	heap.Init(&pq)

	var b, c int
	for i := 0; i < m; i++ {
		fmt.Scan(&b, &c)
		heap.Push(&pq, &Item{number: c, count: b})
	}

	ans := 0
	total := 0
	for pq.Len() > 0 && total < n {
		item := heap.Pop(&pq).(*Item)
		cnt := item.count
		if n < total+cnt {
			cnt = n - total
		}
		ans += item.number * cnt
		total += cnt
	}

	fmt.Println(ans)
}

// An Item is something we manage in a priority queue.
type Item struct {
	number int
	count  int
	// index  int // The index of the item in the heap.
}

// PriorityQueue .
type PriorityQueue []*Item

func (pq PriorityQueue) Len() int { return len(pq) }

func (pq PriorityQueue) Less(i, j int) bool {
	// We want Pop to give us the highest, not lowest, priority so we use greater than here.
	return pq[i].number > pq[j].number
}

func (pq PriorityQueue) Swap(i, j int) {
	pq[i], pq[j] = pq[j], pq[i]
	// pq[i].index = i
	// pq[j].index = j
}

// Push .
func (pq *PriorityQueue) Push(x interface{}) {
	// n := len(*pq)
	item := x.(*Item)
	// item.index = n
	*pq = append(*pq, item)
}

// Pop .
func (pq *PriorityQueue) Pop() interface{} {
	old := *pq
	n := len(old)
	item := old[n-1]
	old[n-1] = nil // avoid memory leak
	// item.index = -1 // for safety
	*pq = old[0 : n-1]
	return item
}
