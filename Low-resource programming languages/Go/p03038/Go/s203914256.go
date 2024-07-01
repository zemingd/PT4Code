package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"os"
	"strconv"
)

func main() {
	N, M := nextInt(), nextInt()
	As := Heap(nextInts(N))

	heap.Init(&As)
	for i := 0; i < M; i++ {
		B, C := nextInt(), nextInt()
		for j := 0; j < B; j++ {
			top := As[0]
			if top >= C {
				break
			}
			heap.Pop(&As)
			heap.Push(&As, C)
		}
	}

	fmt.Println(Sum(As...))
}

func Sum(slice ...int) int {
	sum := 0
	for _, v := range slice {
		sum += v
	}
	return sum
}

type Heap []int

func (h Heap) Less(i, j int) bool    { return h[i] < h[j] }
func (h Heap) Len() int              { return len(h) }
func (h Heap) Swap(i, j int)         { h[i], h[j] = h[j], h[i] }
func (h *Heap) Push(x interface{})   { *h = append(*h, x.(int)) }
func (h *Heap) Pop() (x interface{}) { *h, x = (*h)[:len(*h)-1], (*h)[len(*h)-1]; return }

func nextInts(n int) []int {
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		ret[i] = nextInt()
	}
	return ret
}

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Buffer(make([]byte, 256), 1e9)
	sc.Split(bufio.ScanWords)
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}
