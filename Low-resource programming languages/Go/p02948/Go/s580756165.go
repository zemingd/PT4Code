package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type PQ []int

func (pq PQ) Len() int { return len(pq) }
func (pq PQ) Less(i, j int) bool {
	return pq[i] > pq[j]
}
func (pq PQ) Swap(i, j int) { pq[i], pq[j] = pq[j], pq[i] }
func (pq *PQ) Push(x interface{}) {
	item := x.(int)
	*pq = append(*pq, item)
}
func (pq *PQ) Pop() interface{} {
	old := (*pq)
	n := len(old)
	item := old[n-1]
	*pq = old[0 : n-1]
	return item
}

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	as := make([][]int, n)
	for i := range as {
		sc.Scan()
		a, _ := strconv.Atoi(sc.Text())
		sc.Scan()
		b, _ := strconv.Atoi(sc.Text())
		as[i] = []int{a, b}
	}
	sort.Slice(as, func(i, j int) bool { return as[i][0] < as[j][0] })

	qs := make(PQ, 0)
	heap.Init(&qs)

	var sum, j int
	for i := 1; i <= m; i++ {
		for ; j < n && as[j][0] <= i; j++ {
			heap.Push(&qs, as[j][1])
		}
		if qs.Len() > 0 {
			b := heap.Pop(&qs).(int)
			sum += b
		}
	}
	fmt.Println(sum)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
