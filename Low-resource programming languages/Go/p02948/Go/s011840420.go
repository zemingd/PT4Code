package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"io"
	"os"
	"strconv"
)

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
	x := old[n - 1]
	*h = old[0:n-1]
	return x
}

func Solve(stdin io.Reader, stdout io.Writer) {
	sc := bufio.NewScanner(stdin)

	/* 単語ごとに入力するならこれ */
	sc.Split(bufio.ScanWords)

	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())

	sc.Scan()
	m, _ := strconv.Atoi(sc.Text())

	jobs := make(map[int][]int)

	for i := 0; i < n; i++ {
		sc.Scan()
		a, _ := strconv.Atoi(sc.Text())
		sc.Scan()
		b, _ := strconv.Atoi(sc.Text())
		jobs[a] = append(jobs[a], b)
	}

	sal := 0

	h := &IntHeap{}
	heap.Init(h)

	for i := 1; i < m + 1; i++ {
		if _, ok := jobs[i]; ok {
			for _, v := range jobs[i] {
				heap.Push(h, v)
			}
		}

		if h.Len() > 0 {
			sal += heap.Pop(h).(int)
		}
	}

	/* 出力用 */
	_, _ = fmt.Fprintf(stdout, "%v\n", sal)
}

func main() {
	Solve(os.Stdin, os.Stdout)
	return
}