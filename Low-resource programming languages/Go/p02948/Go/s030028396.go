package main

import (
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

// DescBy is ...
type DescBy []int

func (a DescBy) Len() int      { return len(a) }
func (a DescBy) Swap(i, j int) { a[i], a[j] = a[j], a[i] }
func (a DescBy) Less(i, j int) bool {
	return a[j] < a[i]
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

	retList := []int{}
	ret := 0
	// size := len(jobList)
	next := 0
	// if m < len(jobList) {
	// 	size = m
	// }

	for i := 1; i <= m; i++ {
		for ; next < len(jobList); next++ {
			if jobList[next].A > i {
				break
			}
			retList = append(retList, jobList[next].B)
			continue
		}

		if 0 == len(retList) {
			continue
		}
		sort.Sort(DescBy(retList))
		// size = m - i + 1
		// if len(retList) > size {
		// 	retList = retList[:size]
		// }

		ret += retList[0]
		retList[0] = 0
	}
	fmt.Print(ret)
}

