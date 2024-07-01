package main

import (
	"container/heap"
	"fmt"
)

const inf = 1000000000

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

type PriorityQueueItem struct {
	value    int
	priority int
}

type PrioirtyQueue struct {
	items       []PriorityQueueItem
	value2Index map[int]int
}

func newPriorityQueue() *PrioirtyQueue {
	q := new(PrioirtyQueue)
	q.value2Index = make(map[int]int, 0)
	return q
}

func (q *PrioirtyQueue) Len() int {
	return len(q.items)
}
func (q *PrioirtyQueue) Less(i, j int) bool {
	return q.items[i].priority < q.items[j].priority
}
func (q *PrioirtyQueue) Swap(i, j int) {
	q.items[i], q.items[j] = q.items[j], q.items[i]
	q.value2Index[q.items[i].value] = i
	q.value2Index[q.items[j].value] = j
}
func (q *PrioirtyQueue) Push(x interface{}) {
	q.items = append(q.items, x.(PriorityQueueItem))
	q.value2Index[x.(PriorityQueueItem).value] = len(q.items) - 1
}
func (q *PrioirtyQueue) Pop() interface{} {
	x := q.items[len(q.items)-1]
	q.items = q.items[0 : len(q.items)-1]
	delete(q.value2Index, x.value)
	return x
}
func (q *PrioirtyQueue) update(x PriorityQueueItem) {
	q.items[q.value2Index[x.value]] = x
	heap.Fix(q, q.value2Index[x.value])
}

type AdjacencyList struct {
	node int
	cost int
	next *AdjacencyList
}

func dijkstra(als []*AdjacencyList, s int) []int {
	ds := make([]int, len(als))
	q := newPriorityQueue()
	for v := 0; v < len(als); v++ {
		if v == s {
			ds[v] = 0
		} else {
			ds[v] = inf
		}
		q.Push(PriorityQueueItem{v, ds[v]})
	}
	heap.Init(q)
	for q.Len() != 0 {
		u := heap.Pop(q).(PriorityQueueItem).value
		for al := als[u]; al != nil; al = al.next {
			if ds[u]+al.cost < ds[al.node] {
				ds[al.node] = ds[u] + al.cost
				q.update(PriorityQueueItem{al.node, ds[al.node]})
			}
		}
	}
	return ds
}

func main() {
	var H, W int
	fmt.Scanf("%d%d", &H, &W)
	var Ch, Cw int
	fmt.Scanf("%d%d", &Ch, &Cw)
	Ch--
	Cw--
	var Dh, Dw int
	fmt.Scanf("%d%d", &Dh, &Dw)
	Dh--
	Dw--
	S := make([][]rune, H)
	for i := 0; i < H; i++ {
		S[i] = make([]rune, W)
		for j := 0; j < W; j++ {
			for S[i][j] != '.' && S[i][j] != '#' {
				fmt.Scanf("%c", &S[i][j])
			}
		}
	}
	als := make([]*AdjacencyList, H*W)
	for i := 0; i < H; i++ {
		for j := 0; j < W; j++ {
			if S[i][j] == '#' {
				continue
			}
			for k := -2; k <= 2; k++ {
				for l := -2; l <= 2; l++ {
					if i+k < 0 || i+k >= H || j+l < 0 || j+l >= W || (k == 0 && l == 0) || S[i+k][j+l] == '#' {
						continue
					}
					al := new(AdjacencyList)
					al.node = (i+k)*W + j + l
					if abs(k)+abs(l) == 1 {
						al.cost = 0
					} else {
						al.cost = 1
					}
					al.next = als[i*W+j]
					als[i*W+j] = al
				}
			}
		}
	}
	s := Ch*W + Cw
	g := Dh*W + Dw
	dsg := dijkstra(als, s)[g]
	if dsg == inf {
		fmt.Printf("-1\n")
	} else {
		fmt.Printf("%d\n", dsg)
	}
	return
}
