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

type PairInt struct {
	first, second int
}

func NewPairInt(first, second int) PairInt {
	return PairInt{first, second}
}

type PairsInt []PairInt

func (p PairsInt) Less(i, j int) bool {
	if p[i].first == p[j].first {
		return p[i].second < p[j].second
	} else {
		return p[i].first < p[j].first
	}
}

func (p PairsInt) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}

func (p PairsInt) Len() int {
	return len(p)
}

type IntHeap []int

func (h IntHeap) Len() int {
	return len(h)
}

func (h IntHeap) Less(i, j int) bool {
	return h[i] > h[j]
}

func (h IntHeap) Swap(i, j int) {
	h[i], h[j] = h[j], h[i]
}

func (h *IntHeap) Push(x interface{}) {
	*h = append(*h, x.(int))
}

func (h *IntHeap) Pop() interface{} {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[0 : n-1]
	return x
}

func solve() {
	var n, m int
	fmt.Scan(&n, &m)
	a := make([]int, n)
	b := make([]int, n)
	sc := bufio.NewScanner(os.Stdin)
	for i := 0; sc.Scan(); i++ {
		args := strings.Split(sc.Text(), " ")
		a[i], _ = strconv.Atoi(args[0])
		b[i], _ = strconv.Atoi(args[1])
	}

	pairs := make(PairsInt, n)
	for i := 0; i < n; i++ {
		pairs[i] = NewPairInt(a[i], b[i])
	}
	sort.Sort(pairs)

	h := &IntHeap{}
	heap.Init(h)
	sum := 0
	j := 0
	for i := n; i > 0; i-- {
		for j < n && pairs[j].first+i <= m+1 {
			heap.Push(h, pairs[j].second)
			j++
		}
		if h.Len() != 0 {
			sum += heap.Pop(h).(int)
		}
	}

	fmt.Println(sum)
}

func main() {
	solve()
}
