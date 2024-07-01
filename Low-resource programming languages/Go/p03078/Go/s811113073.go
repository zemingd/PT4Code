package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

// An Item is something we manage in a priority queue.
type Item struct {
	value    []int
	priority int64
	// The index is needed by update and is maintained by the heap.Interface methods.
	index int // The index of the item in the heap.
}

// A PriorityQueue implements heap.Interface and holds Items.
type PriorityQueue []*Item

func (pq PriorityQueue) Len() int { return len(pq) }

func (pq PriorityQueue) Less(i, j int) bool {
	//We want Pop to give us the highest, not lowest, priority so we use greater than here.
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
	item.index = -1 // for safety
	*pq = old[0 : n-1]
	return item
}

func Equal(a, b []int) bool {
	if len(a) != len(b) {
		return false
	}
	for i, v := range a {
		if v != b[i] {
			return false
		}
	}
	return true
}

type IntArray []int64

func (a IntArray) Len() int {
	return len(a)
}

func (a IntArray) Less(i, j int) bool {
	return a[i] > a[j]
}

func (a IntArray) Swap(i, j int) {
	a[i], a[j] = a[j], a[i]
}

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func exists(pq PriorityQueue, item *Item) bool {
	for i := 0; i < pq.Len(); i++ {
		if pq[i].priority == item.priority && Equal(pq[i].value, item.value) {
			return true
		}
	}
	return false
}

func main() {
	line1 := nextLine()
	XYZK := strings.Split(line1, " ")
	X, _ := strconv.Atoi(XYZK[0])
	Y, _ := strconv.Atoi(XYZK[1])
	Z, _ := strconv.Atoi(XYZK[2])
	K, _ := strconv.Atoi(XYZK[3])
	line2 := nextLine()
	line3 := nextLine()
	line4 := nextLine()
	a := strings.Split(line2, " ")
	b := strings.Split(line3, " ")
	c := strings.Split(line4, " ")
	A := make(IntArray, X)
	B := make(IntArray, Y)
	C := make(IntArray, Z)

	for i := 0; i < X; i++ {
		A[i], _ = strconv.ParseInt(a[i], 10, 64)
	}
	for i := 0; i < Y; i++ {
		B[i], _ = strconv.ParseInt(b[i], 10, 64)
	}
	for i := 0; i < Z; i++ {
		C[i], _ = strconv.ParseInt(c[i], 10, 64)
	}
	sort.Sort(A)
	sort.Sort(B)
	sort.Sort(C)
	pq := make(PriorityQueue, 1)
	item0 := &Item{
		value:    []int{0, 0, 0},
		priority: A[0] + B[0] + C[0],
		index:    0,
	}
	pq[0] = item0
	heap.Init(&pq)
	ans := make([]int64, K)
	for ind := 0; ind < K; ind++ {
		item := heap.Pop(&pq).(*Item)
		p := item.priority
		i := item.value[0]
		j := item.value[1]
		k := item.value[2]
		ans[ind] = p

		if i+1 < X && j < Y && k < Z {
			item1 := &Item{
				value:    []int{i + 1, j, k},
				priority: A[i+1] + B[j] + C[k],
			}
			if !exists(pq, item1) {
				heap.Push(&pq, item1)
			}
		}

		if i < X && j+1 < Y && k < Z {
			item2 := &Item{
				value:    []int{i, j + 1, k},
				priority: A[i] + B[j+1] + C[k],
			}
			if !exists(pq, item2) {
				heap.Push(&pq, item2)
			}
		}

		if i < X && j < Y && k+1 < Z {
			item3 := &Item{
				value:    []int{i, j, k + 1},
				priority: A[i] + B[j] + C[k+1],
			}
			if !exists(pq, item3) {
				heap.Push(&pq, item3)
			}
		}
	}
	for _, v := range ans {
		fmt.Println(v)
	}
}
