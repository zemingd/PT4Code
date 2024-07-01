package main

import (
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

func (q *PrioirtyQueue) swap(i, j int) {
	q.items[i], q.items[j] = q.items[j], q.items[i]
	q.value2Index[q.items[i].value] = i
	q.value2Index[q.items[j].value] = j
}
func (q *PrioirtyQueue) push(x PriorityQueueItem) {
	q.items = append(q.items, x)
	q.value2Index[x.value] = len(q.items) - 1
	var parent int
	for i := len(q.items) - 1; ; i = parent {
		if i == 0 {
			break
		}
		parent = i / 2
		if q.items[parent].priority <= q.items[i].priority {
			break
		}
		q.swap(parent, i)
	}
}
func (q *PrioirtyQueue) pop() PriorityQueueItem {
	q.swap(0, len(q.items)-1)
	x := q.items[len(q.items)-1]
	q.items = q.items[0 : len(q.items)-1]
	delete(q.value2Index, x.value)
	var priorchild int
	for i := 0; ; i = priorchild {
		if 2*i >= len(q.items) {
			break
		}
		if 2*i+1 < len(q.items) && q.items[2*i+1].priority < q.items[2*i].priority {
			priorchild = 2*i + 1
		} else {
			priorchild = 2 * i
		}
		if q.items[priorchild].priority >= q.items[i].priority {
			break
		}
		q.swap(priorchild, i)
	}
	return x
}
func (q *PrioirtyQueue) update(x PriorityQueueItem) {
	q.items[q.value2Index[x.value]] = x
	var parent int
	for i := q.value2Index[x.value]; ; i = parent {
		if i == 0 {
			break
		}
		parent = i / 2
		if q.items[parent].priority <= q.items[i].priority {
			break
		}
		q.swap(parent, i)
	}
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
		q.push(PriorityQueueItem{v, ds[v]})
	}
	for len(q.items) != 0 {
		u := q.pop().value
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
			fmt.Scanf("%c", &S[i][j])
		}
		fmt.Scanf("\n")
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
