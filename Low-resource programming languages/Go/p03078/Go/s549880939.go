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

func main() {
	x, y, z, k := readInt(), readInt(), readInt(), readInt()
	a := make([]int, x)
	for i := range a {
		a[i] = readInt()
	}
	b := make([]int, y)
	for i := range b {
		b[i] = readInt()
	}
	c := make([]int, z)
	for i := range c {
		c[i] = readInt()
	}

	ab := make([]int, 0)
	for i := range a {
		for j := range b {
			ab = append(ab, a[i]+b[j])
		}
	}

	sort.Sort(sort.Reverse(sort.IntSlice(a)))
	sort.Sort(sort.Reverse(sort.IntSlice(b)))
	sort.Sort(sort.Reverse(sort.IntSlice(c)))

	pq := make(PriorityQueue, 0)
	heap.Init(&pq)
	heap.Push(&pq, &Item{priority: a[0] + b[0] + c[0], a: 0, b: 0, c: 0})

	m := make(map[int]map[int]map[int]struct{})
	size := []int{x, y, z}
	for i := 0; i < k; i++ {
		item := heap.Pop(&pq).(*Item)
		fmt.Println(item.priority)

		for j := 0; j < 3; j++ {
			l := []int{item.a, item.b, item.c}
			if l[j]+1 >= size[j] {
				continue
			}
			l[j]++

			if _, ok := m[l[0]][l[1]][l[2]]; !ok {
				if _, ok := m[l[0]]; !ok {
					m[l[0]] = make(map[int]map[int]struct{})
				}
				if _, ok := m[l[0]][l[1]]; !ok {
					m[l[0]][l[1]] = make(map[int]struct{})
				}
				m[l[0]][l[1]][l[2]] = struct{}{}
				heap.Push(&pq, &Item{priority: a[l[0]] + b[l[1]] + c[l[2]], a: l[0], b: l[1], c: l[2]})
			}
		}
	}
}

// An Item is something we manage in a priority queue.
type Item struct {
	priority int // The priority of the item in the queue.
	a        int
	b        int
	c        int
	// The index is needed by update and is maintained by the heap.Interface methods.
	index int // The index of the item in the heap.
}

// A PriorityQueue implements heap.Interface and holds Items.
type PriorityQueue []*Item

func (pq PriorityQueue) Len() int { return len(pq) }

func (pq PriorityQueue) Less(i, j int) bool {
	// We want Pop to give us the highest, not lowest, priority so we use greater than here.
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
	old[n-1] = nil  // avoid memory leak
	item.index = -1 // for safety
	*pq = old[0 : n-1]
	return item
}

func main1() {
	x, y, z, k := readInt(), readInt(), readInt(), readInt()
	a := make([]int, x)
	for i := range a {
		a[i] = readInt()
	}
	b := make([]int, y)
	for i := range b {
		b[i] = readInt()
	}
	c := make([]int, z)
	for i := range c {
		c[i] = readInt()
	}

	ab := make([]int, 0)
	for i := range a {
		for j := range b {
			ab = append(ab, a[i]+b[j])
		}
	}

	sort.Sort(sort.Reverse(sort.IntSlice(ab)))
	sort.Sort(sort.Reverse(sort.IntSlice(c)))

	kk := min(len(ab), k)
	abc := make([]int, 0)
	for i := 0; i < kk; i++ {
		for j := range c {
			abc = append(abc, ab[i]+c[j])
		}
	}
	sort.Sort(sort.Reverse(sort.IntSlice(abc)))

	for i := 0; i < k; i++ {
		fmt.Println(abc[i])
	}
}

// sort ------------------------------------------------------------

type xxx struct {
	x int
}

type sortArray []xxx

func (s sortArray) Len() int           { return len(s) }
func (s sortArray) Swap(i, j int)      { s[i], s[j] = s[j], s[i] }
func (s sortArray) Less(i, j int) bool { return s[i].x < s[j].x }

// -----------------------------------------------------------------

var (
	readString func() string
	readBytes  func() []byte
)

func init() {
	readString, readBytes = newReadString(os.Stdin)
}

func newReadString(ior io.Reader) (func() string, func() []byte) {
	r := bufio.NewScanner(ior)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)

	f1 := func() string {
		if !r.Scan() {
			panic("Scan failed")
		}
		return r.Text()
	}
	f2 := func() []byte {
		if !r.Scan() {
			panic("Scan failed")
		}
		return r.Bytes()
	}
	return f1, f2
}

func readInt() int {
	return int(readInt64())
}

func readInt64() int64 {
	i, err := strconv.ParseInt(readString(), 10, 64)
	if err != nil {
		panic(err.Error())
	}
	return i
}

func readFloat64() float64 {
	f, err := strconv.ParseFloat(readString(), 64)
	if err != nil {
		panic(err.Error())
	}
	return f
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func sum(a []int) int {
	var ret int
	for i := range a {
		ret += a[i]
	}
	return ret
}

func sumFloat64(a []float64) float64 {
	var ret float64
	for i := range a {
		ret += a[i]
	}
	return ret
}

func gcd(m, n int) int {
	for m%n != 0 {
		m, n = n, m%n
	}
	return n
}

func lcm(m, n int) int {
	return m / gcd(m, n) * n
}
