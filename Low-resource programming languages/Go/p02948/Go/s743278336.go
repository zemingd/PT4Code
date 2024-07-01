package main

import (
	"container/heap"
	"fmt"
)

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	jobs := make(map[int][]Job)
	var a, b int
	for i := 0; i < n; i++ {
		fmt.Scan(&a, &b)
		jobs[a] = append(jobs[a], Job{i, a, b})
	}

	pq := make(PriorityQueue, 0)
	heap.Init(&pq)

	ans := 0
	for i := 1; i <= m; i++ {
		for _, job := range jobs[i] {
			item := Item{job: job, priority: job.pay}
			heap.Push(&pq, &item)
		}
		if pq.Len() > 0 {
			item := heap.Pop(&pq).(*Item)
			ans += item.job.pay
		}
	}
	fmt.Println(ans)
}

// Job .
type Job struct {
	i, days, pay int
}

// Item .
type Item struct {
	job      Job
	priority int
	index    int
}

// PriorityQueue .
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

// Push .
func (pq *PriorityQueue) Push(x interface{}) {
	n := len(*pq)
	item := x.(*Item)
	item.index = n
	*pq = append(*pq, item)
}

// Pop .
func (pq *PriorityQueue) Pop() interface{} {
	old := *pq
	n := len(old)
	item := old[n-1]
	old[n-1] = nil  // avoid memory leak
	item.index = -1 // for safety
	*pq = old[0 : n-1]
	return item
}
