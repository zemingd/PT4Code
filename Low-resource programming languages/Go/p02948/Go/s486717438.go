package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

type task struct {
	day, price int
}

type theap []task

func (h theap) Len() int           { return len(h) }
func (h theap) Less(i, j int) bool { return h[i].price > h[j].price } // maxにするためにあえて変更
func (h theap) Swap(i, j int)      { h[i], h[j] = h[j], h[i] }

func (h *theap) Push(x interface{}) {
	*h = append(*h, x.(task))
}

func (h *theap) Pop() interface{} {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[0 : n-1]

	return x
}

func main() {
	sc.Split(bufio.ScanWords)
	N, M := scanInt(), scanInt()

	jobs := make(map[int][]int)
	for i := 0; i < N; i++ {
		A, B := scanInt(), scanInt()
		jobs[A] = append(jobs[A], B)
	}

	ans := 0
	H := make(theap, N)
	heap.Init(&H)
	for day := 1; day <= M; day++ {
		for _, t := range jobs[day] {
			heap.Push(&H, task{day, t})
		}
		selected := heap.Pop(&H).(task)
		ans += selected.price
	}
	fmt.Println(ans)
}
