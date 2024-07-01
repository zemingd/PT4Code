package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"io"
	"os"
	"sort"
	"strconv"
)

type IntSlice []int

func (p IntSlice) Len() int {
	return len(p)
}

func (p IntSlice) Less(i, j int) bool {
	return p[i] > p[j]
}

func (p IntSlice) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}

type IntHeap [][]int

func (p IntHeap) Len() int {
	return len(p)
}

func (p IntHeap) Less(i, j int) bool {
	return p[i][0] > p[j][0]
}

func (p IntHeap) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}

func (p *IntHeap) Push(x interface{}) {
	*p = append(*p, x.([]int))
}

func (p *IntHeap) Pop() interface{} {
	old := *p
	n := len(old)
	ret := old[n - 1]
	*p = old[:n - 1]
	return ret
}

func Solve(stdin io.Reader, stdout io.Writer) {
	sc := bufio.NewScanner(stdin)

	/* 単語ごとに入力するならこれ */
	sc.Split(bufio.ScanWords)

	sc.Scan()
	X, _ := strconv.Atoi(sc.Text())

	sc.Scan()
	Y, _ := strconv.Atoi(sc.Text())

	sc.Scan()
	Z, _ := strconv.Atoi(sc.Text())

	sc.Scan()
	K, _ := strconv.Atoi(sc.Text())

	a := make([]int, X)
	b := make([]int, Y)
	c := make([]int, Z)

	for i := 0; i < X; i++ {
		sc.Scan()
		a[i], _ = strconv.Atoi(sc.Text())
	}

	for i := 0; i < Y; i++ {
		sc.Scan()
		b[i], _ = strconv.Atoi(sc.Text())
	}

	for i := 0; i < Z; i++ {
		sc.Scan()
		c[i], _ = strconv.Atoi(sc.Text())
	}

	sort.Sort(IntSlice(a))
	sort.Sort(IntSlice(b))
	sort.Sort(IntSlice(c))

	h := &IntHeap{}

	heap.Init(h)
	var done [1000][1000][1000]bool

	var i, j, k int
	heap.Push(h, []int{a[i] + b[j] + c[k], i, j, k})
	done[i][j][k] = true
	for l := 0; l < K; l++ {
		p := heap.Pop(h).([]int)
		_, _ = fmt.Fprintf(stdout, "%v\n", p[0])
		i, j, k = p[1], p[2], p[3]
		if i < X - 1 && !done[i + 1][j][k] {
			heap.Push(h, []int{a[i + 1] + b[j] + c[k], i + 1, j, k})
			done[i + 1][j][k] = true
		}
		if j < Y - 1 && !done[i][j + 1][k] {
			heap.Push(h, []int{a[i] + b[j + 1] + c[k], i, j + 1, k})
			done[i][j + 1][k] = true
		}
		if k < Z - 1 && !done[i][j][k + 1] {
			heap.Push(h, []int{a[i] + b[j] + c[k + 1], i, j, k + 1})
			done[i][j][k + 1] = true
		}
	}
}

func main() {
	Solve(os.Stdin, os.Stdout)
	return
}