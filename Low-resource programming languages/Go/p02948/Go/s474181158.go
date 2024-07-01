package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

type Work struct {
	Date, Money int
}

type PriorityQueue []Work

func (pq PriorityQueue) Len() int { return len(pq) }

func (pq PriorityQueue) Less(i, j int) bool {
	if pq[i].Money != pq[j].Money {
		return pq[i].Money > pq[j].Money
	} else {
		return pq[i].Date < pq[j].Date
	}
}

func (pq PriorityQueue) Swap(i, j int) {
	pq[i], pq[j] = pq[j], pq[i]
}

func (pq *PriorityQueue) Push(x interface{}) {
	item := x.(Work)
	*pq = append(*pq, item)
}

func (pq *PriorityQueue) Pop() interface{} {
	old := *pq
	n := len(old)
	item := old[n-1]
	*pq = old[0 : n-1]
	return item
}

func main() {
	sc.Split(bufio.ScanWords)

	n, m := nextInt(), nextInt()
	wm := make(map[int][]Work)
	for i := 0; i < n; i++ {
		a, b := nextInt(), nextInt()
		wm[a] = append(wm[a], Work{a, b})
	}

	var w PriorityQueue
	heap.Init(&w)

	res := 0
	for i := 1; i <= m; i++ {
		if ws, ok := wm[i]; ok {
			for _, work := range ws {
				heap.Push(&w, work)
			}
		}

		if w.Len() != 0 {
			x := heap.Pop(&w).(Work)
			res += x.Money
		}
	}

	fmt.Println(res)
}