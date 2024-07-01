 
package main

import (
	"fmt"
	"container/heap"
)

type Job struct {
	A int
	B int
}

type Item struct {
	value interface{}
	priority float64
	index int
}

type PriorityQueue []*Item

func (pq PriorityQueue) Len() int {
	return len(pq)
}

func (pq PriorityQueue) Less(i, j int) bool {
	// We want Pop to give us the highest, not lowest, priority so we use greater than here.
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
	item.index = -1
	*pq = old[0 : n-1]
	return item
}


func main() {
	var N, M int
	fmt.Scan(&N)
	fmt.Scan(&M)

	cost_queue := make(PriorityQueue, 0)
	for i := 0; i < N; i++ {
		var A, B int
		fmt.Scan(&A)
		fmt.Scan(&B)
		job := Job {A, B}
		heap.Push(&cost_queue, &Item {
			value: &job,
			priority: float64(-job.A),
		})
	}

	res := 0
	revenue_queue := make(PriorityQueue, 0)
	for i := 1; i <= M; i++ {
		for len(cost_queue) > 0 && cost_queue[0].value.(*Job).A <= i{
			var top *Job
			top = heap.Pop(&cost_queue).(*Item).value.(*Job)
			heap.Push(&revenue_queue, &Item {
				value: top,
				priority: float64(top.B),
			})
		}

		if len(revenue_queue) > 0 {
			top := heap.Pop(&revenue_queue).(*Item).value.(*Job)
			res += top.B
		}
	}

	fmt.Println(res)
}
