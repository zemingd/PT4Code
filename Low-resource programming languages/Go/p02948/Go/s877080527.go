package main

import (
	"container/heap"
	"fmt"
)

type Item struct {
	day int
	priority int
	index int
}

type PriorityQueue []*Item

func (pq PriorityQueue) Len() int { return len(pq) }

func (pq PriorityQueue) Less(i, j int) bool {
	return pq[i].priority > pq[j].priority
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
	var N int
	var M int
	fmt.Scanf("%d %d", &N, &M)
	m := map[int][]int{}
	for i:=0; i<N; i++{
		var a int
		var b int
		fmt.Scanf("%d %d", &a, &b)
		m[a] = append(m[a], b)
	}

	q := &PriorityQueue{}
	heap.Init(q)

	total := 0
	for i:=1; i <= M; i++ {
		for _, b := range m[i] {
			heap.Push(q, &Item{
				day: i,
				priority: b,
			})
		}

		if q.Len() == 0 {
			continue
		}

		pop := heap.Pop(q).(*Item)

		total += pop.priority
	}

	fmt.Printf("%d", total)
}
