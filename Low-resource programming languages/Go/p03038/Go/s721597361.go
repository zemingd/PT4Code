package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	N := nextInt()
	M := nextInt()
	var pq priorityQueue
	heap.Init(&pq)
	for i := 0; i < N; i++ {
		heap.Push(&pq, &pair{first: nextInt(), second: 1})
	}
	for i := 0; i < M; i++ {
		heap.Push(&pq, &pair{second: nextInt(), first: nextInt()})
	}

	var ans int
	for i := 0; i < N; i++ {
		p := heap.Pop(&pq).(*pair)
		ans += p.first
		if p.second > 1 {
			p.second--
			heap.Push(&pq, p)
		}
	}

	fmt.Println(ans)
}

type pair struct {
	first, second int

	index int
}

type priorityQueue []*pair

func (pq priorityQueue) Len() int { return len(pq) }

func (pq priorityQueue) Less(i, j int) bool {
	if pq[i].first == pq[j].first {
		return pq[i].second > pq[j].second
	}

	return pq[i].first > pq[j].first
}

func (pq priorityQueue) Swap(i, j int) {
	pq[i], pq[j] = pq[j], pq[i]
	pq[i].index = i
	pq[j].index = j
}

func (pq *priorityQueue) Push(x interface{}) {
	n := len(*pq)
	p := x.(*pair)
	p.index = n
	*pq = append(*pq, p)
}

func (pq *priorityQueue) Pop() interface{} {
	old := *pq
	n := len(old)
	p := old[n-1]
	p.index = -1
	*pq = old[0 : n-1]
	return p
}

func (pq *priorityQueue) update(p *pair, first, second int) {
	p.first = first
	p.second = second
	heap.Fix(pq, p.index)
}

// Input. ----------

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Buffer([]byte{}, math.MaxInt64)
	sc.Split(bufio.ScanWords)
}

func nextInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}

	return i
}

func nextFloat() float64 {
	sc.Scan()
	f64, err := strconv.ParseFloat(sc.Text(), 64)
	if err != nil {
		panic(err)
	}

	return f64
}

func nextString() string {
	sc.Scan()
	if err := sc.Err(); err != nil {
		panic(err)
	}

	return sc.Text()
}

// ---------- Input.

// Util. ----------

func abs(x int) int {
	return int(math.Abs(float64(x)))
}

func min(x, y int) int {
	return int(math.Min(float64(x), float64(y)))
}

func max(x, y int) int {
	return int(math.Max(float64(x), float64(y)))
}

// ---------- Util.
