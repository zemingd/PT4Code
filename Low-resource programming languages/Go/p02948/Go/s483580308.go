package main

import (
	"container/heap"
	"fmt"
	"sort"
)

// Job is ...
type Job struct {
	A int
	B int
}

// AscABy is ...
type AscABy []Job

func (a AscABy) Len() int      { return len(a) }
func (a AscABy) Swap(i, j int) { a[i], a[j] = a[j], a[i] }
func (a AscABy) Less(i, j int) bool {
	return a[i].A < a[j].A
}

// A PriorityQueue implements heap.Interface and holds Jobs.
type PriorityQueue []int

func (pq PriorityQueue) Len() int { return len(pq) }

func (pq PriorityQueue) Less(i, j int) bool {
	// We want Pop to give us the highest, not lowest, priority so we use greater than here.
	return pq[i] > pq[j]
}

func (pq PriorityQueue) Swap(i, j int) {
	pq[i], pq[j] = pq[j], pq[i]
}

// Push is ...
func (pq *PriorityQueue) Push(x interface{}) {
	// n := len(*pq)
	// job := x.(*jobs)
	job := x.(int)
	*pq = append(*pq, job)
}

// Pop is ...
func (pq *PriorityQueue) Pop() interface{} {
	old := *pq
	n := len(old)
	job := old[n-1]
	// job.index = -1 // for safety
	*pq = old[0 : n-1]
	return job
}

// main is ...
func main() {
	var n, m, a, b int

	fmt.Scanln(&n, &m)

	jobList := make([]Job, n)
	for i := 0; i < n; i++ {
		fmt.Scanln(&a, &b)
		if m < a {
			continue
		}
		jobList[i] = Job{a, b}
	}

	// A Asc JobList sort
	sort.Sort(AscABy(jobList))

	ret, j := 0, 1

	pq := make(PriorityQueue, len(jobList))
	heap.Init(&pq)
	for i := m - 1; i >= 0; i-- {
		for ; len(jobList) >= j; j++ {
			if jobList[j-1].A > m-i {
				break
			}
			heap.Push(&pq, jobList[j-1].B)
		}

		if 0 == len(pq) {
			continue
		}
		ret += heap.Pop(&pq).(int)
	}
	fmt.Print(ret)
}

