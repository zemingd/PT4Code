package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	iv, _ := strconv.Atoi(sc.Text())
	return iv
}

func init() {
	sc.Split(bufio.ScanWords)
}

type prQue []int

func (p prQue) Len() int            { return len(p) }
func (p prQue) Less(i, j int) bool  { return p[i] > p[j] }
func (p prQue) Swap(i, j int)       { p[i], p[j] = p[j], p[i] }
func (p *prQue) Push(x interface{}) { *p = append(*p, x.(int)) }
func (p *prQue) Pop() interface{} {
	old := *p
	n := len(old)
	x := old[n-1]
	*p = old[0 : n-1]
	return x
}

func main() {
	n := scanInt()
	a := make([]int, n)
	for i := range a {
		a[i] = scanInt()
	}
	sort.Sort(sort.Reverse(sort.IntSlice(a)))

	pq := make(prQue, 0, n)
	heap.Push(&pq, a[0])
	heap.Push(&pq, a[1])
	ans := a[0]
	for i := 2; i < len(a); i++ {
		heap.Push(&pq, a[i])
		v1 := heap.Pop(&pq).(int)
		v2 := heap.Pop(&pq).(int)
		ans += v2
		heap.Push(&pq, v1)
		heap.Push(&pq, v2)
	}
	fmt.Println(ans)
}
