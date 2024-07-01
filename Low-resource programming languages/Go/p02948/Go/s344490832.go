package main

import (
	"container/heap"
	"fmt"
)

type Vacation struct {
	Priority int // The priority of the item in the queue.
}

type PriorityQueue []*Vacation

func (pq PriorityQueue) Len() int { return len(pq) }

func (pq PriorityQueue) Less(i, j int) bool {
	return pq[i].Priority > pq[j].Priority
}

func (pq PriorityQueue) Swap(i, j int) {
	pq[i], pq[j] = pq[j], pq[i]
}

func (pq *PriorityQueue) Push(x interface{}) {
	vacation := x.(*Vacation)
	*pq = append(*pq, vacation)
}

func (pq *PriorityQueue) Pop() interface{} {
	old := *pq
	n := len(old)
	vacation := old[n-1]
	*pq = old[0 : n-1]
	return vacation
}

func main() {
	var N, M, A, B, sum int
	fmt.Scan(&N, &M)

	m := map[int][]int{}
	for i := 0; i < N; i++ {
		fmt.Scan(&A, &B)
		m[A] = append(m[A], B)
	}

	var pq PriorityQueue
	heap.Init(&pq)
	for i := 0; i <= M; i++ {
		for j := 0; j < len(m[i]); j++ {
			heap.Push(&pq, &Vacation{Priority: m[i][j]})
		}
		if pq.Len() == 0 {
			continue
		}
		w := heap.Pop(&pq).(*Vacation)
		sum += w.Priority
	}
	fmt.Println(sum)
}
