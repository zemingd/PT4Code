//  D - Summer Vacation

package main

import "fmt"
import "container/heap"

func main() {
	var N, M int
	fmt.Scanf("%d %d", &N, &M)

	// k 日目までに有効な仕事の支払い
	jobs := map[int][]int{}

	for i := 0; i < N; i++ {
		var offset, pay int
		fmt.Scanf("%d %d", &offset, &pay)

		if offset > M {
			continue
		}

		deadline := M - offset

		if jobs[deadline] == nil {
			jobs[deadline] = []int{}
		}

		jobs[deadline] = append(jobs[deadline], pay)
	}

	total := 0

	h := &IntHeap{}
	heap.Init(h)

	for d := M - 1; d >= 0; d-- {
		if _, ok := jobs[d]; ok {
			for _, p := range jobs[d] {
				heap.Push(h, -p)
			}
		}

		if h.Len() > 0 {
			total += heap.Pop(h).(int) * -1
		}
	}

	fmt.Println(total)
}

type IntHeap []int

func (h IntHeap) Len() int           { return len(h) }
func (h IntHeap) Less(i, j int) bool { return h[i] < h[j] }
func (h IntHeap) Swap(i, j int)      { h[i], h[j] = h[j], h[i] }

func (h *IntHeap) Push(x interface{}) {
	// Push and Pop use pointer receivers because they modify the slice's length,
	// not just its contents.
	*h = append(*h, x.(int))
}

func (h *IntHeap) Pop() interface{} {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[0 : n-1]
	return x
}
