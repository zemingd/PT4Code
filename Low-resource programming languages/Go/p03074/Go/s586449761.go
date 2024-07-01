package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"os"
	"reflect"
	"sort"
)

func main() {
	defer writer.Flush() // Use printf, scanf

	// CODE
	var N, K int
	var S []byte
	scanf("%d %d\n", &N, &K)
	scanf("%s\n", &S)
	arr := make([]int, N)
	for i := 0; i < N; i++ {
		arr[i] = int(S[i] - '0')
	}

	psum := make([]int, N)
	if arr[0] == 0 {
		psum[0] = 1
	}
	for i := 1; i < N; i++ {
		psum[i] = psum[i-1]
		if arr[i] == 0 && arr[i-1] == 1 {
			psum[i] += 1
		}
	}

	leftMost := make([]int, 2*N)
	rightMost := make([]int, 2*N)
	for i := 0; i < 2*N; i++ {
		rightMost[i] = -1
		leftMost[i] = -1
	}

	//printf("psum: ")
	for i := 0; i < N; i++ {
		rightMost[psum[i]] = i
		if v := leftMost[psum[i]]; v == -1 {
			leftMost[psum[i]] = i
		}
		//printf("%d ", psum[i])
	}
	//printf("\n")

	maxId := -1
	//printf("rightMost: ")
	for i := 0; i < 2*N; i++ {
		if rightMost[i] == -1 {
			continue
		}
		//printf("%d->%d, ", i, rightMost[i])
		maxId = maxInt(maxId, i)
	}
	//printf("\n")

	//printf("maxId=%d\n", maxId)

	// printf("leftMost: ")
	// for i := 0; i+K < 2*N; i++ {
	// 	if leftMost[i] == -1 {
	// 		continue
	// 	}
	// 	printf("%d->%d, ", i, leftMost[i])
	// }
	// printf("\n")

	// index 0123456789
	//       11101010110011
	// psum  00011223334444

	//       00010
	// psum  11112
	ans := -1
	for i := 0; i < N; i++ {
		r := -1
		if arr[i] == 0 {
			r = rightMost[minInt(psum[i]+K-1, maxId)]
			//printf("r=%d\n", r)
		} else {
			r = rightMost[minInt(psum[i]+K, maxId)]
		}
		if r != -1 {
			//printf("left=%d right=%d\n", i, r)
			ans = maxInt(ans, r-i+1)
		}
	}
	printf("%d\n", ans)
}

// I/O {{{
var reader *bufio.Reader = bufio.NewReader(os.Stdin)
var writer *bufio.Writer = bufio.NewWriter(os.Stdout)

func printf(f string, a ...interface{}) { fmt.Fprintf(writer, f, a...) }
func scanf(f string, a ...interface{})  { fmt.Fscanf(reader, f, a...) }
func scanInts(n int) []int {
	res := make([]int, n)
	for i := 0; i < n-1; i++ {
		scanf("%d ", &res[i])
	}
	scanf("%d\n", &res[n-1])
	return res
}

// }}}
// {{{ dummy
func dummy() {
	fmt.Printf("Hello, World\n")
	fmt.Printf("%v", reflect.TypeOf(0))

	arr := []int{10, 9, 8, 7, 1}
	sort.Ints(arr)
	fmt.Println(arr)
}

// }}}
// Set {{{
// s := NewSet()
// s.Add("a")
// s.Add("b")

// for i, v := range s.GetSlice() {
// 	// 0 a
// 	// 1 b
// 	printf("%d %s\n", i, v.(string))
// }

// printf("%v\n", s.Contains("a")) // true
// printf("%v\n", s.Contains("x")) // false
type Set map[interface{}]struct{}

func NewSet() Set {
	return Set{}
}

func (s *Set) Add(x interface{}) {
	(*s)[x] = struct{}{}
}

func (s Set) Contains(x interface{}) bool {
	_, ok := s[x]
	return ok
}

func (s Set) GetSlice() []interface{} {
	rc := []interface{}{}
	for key, _ := range s {
		rc = append(rc, key)
	}
	return rc
}

// }}}
// Math {{{
func maxInt(x int, y int) int {
	if x > y {
		return x
	}
	return y
}

func minInt(x int, y int) int {
	if x < y {
		return x
	}
	return y
}

// }}}
// PriorityQueue {{{
// Usage:
// type Person struct {
// 	name string
// 	age  int
// }
//
// func (p1 Person) Less(p2 interface{}) bool {
// 	return p1.age < p2.(Person).age
// }
//
// func main() {
// 	sc.Split(bufio.ScanWords)
// 	defer out.Flush() // Use printf
//
// 	// CODE
// 	q := NewPriorityQueue()
// 	q.Push(Person{name: "B", age: 11})
// 	q.Push(Person{name: "A", age: 10})
// 	q.Push(Person{name: "C", age: 12})
//
// 	for q.Len() > 0 {
// 		p := q.Pop().(Person)
// 		printf("%s %d\n", p.name, p.age)
// 	}
// }
func NewPriorityQueue() *PriorityQueue {
	q := &PriorityQueue{s: new(sorter)}
	heap.Init(q.s)
	return q
}

func (q *PriorityQueue) Pop() Comparable {
	return heap.Pop(q.s).(Comparable)
}

func (q *PriorityQueue) Top() Comparable {
	if len(*q.s) > 0 {
		return (*q.s)[0].(Comparable)
	}
	return nil
}

func (q *PriorityQueue) Fix(x Comparable, i int) {
	(*q.s)[i] = x
	heap.Fix(q.s, i)
}

func (q *PriorityQueue) Remove(i int) Comparable {
	return heap.Remove(q.s, i).(Comparable)
}

func (q *PriorityQueue) Len() int {
	return q.s.Len()
}

type Comparable interface {
	Less(other interface{}) bool
}

type sorter []Comparable

func (s *sorter) Push(x interface{}) {
	*s = append(*s, x.(Comparable))
}

func (s *sorter) Pop() interface{} {
	n := len(*s)
	if n > 0 {
		x := (*s)[n-1]
		*s = (*s)[0 : n-1]
		return x
	}
	return nil
}

func (s *sorter) Len() int {
	return len(*s)
}

func (s *sorter) Less(i, j int) bool {
	return (*s)[i].Less((*s)[j])
}

func (s *sorter) Swap(i, j int) {
	(*s)[i], (*s)[j] = (*s)[j], (*s)[i]
}

// Define priority queue struct
type PriorityQueue struct {
	s *sorter
}

func (q *PriorityQueue) Push(x Comparable) {
	heap.Push(q.s, x)
}

// }}}
// Sort {{{
// sort.Stable(IntSlice(a))
type IntSlice []int

func (a IntSlice) Len() int {
	return len(a)
}
func (a IntSlice) Less(i, j int) bool {
	return a[i] < a[j]
}
func (a IntSlice) Swap(i, j int) {
	a[i], a[j] = a[j], a[i]
}

// }}}
// SegmentTree {{{
// segInt := InitSegmentTree(
// 	[]int{1, 9, 5, 3, 7, 2, 4, 6, 8},
// 	int(1e9),
// 	IntMergerMin,
// )
// fmt.Println(segInt.GetRange(1, 2)) // 9 = min(9)
// fmt.Println(segInt.GetRange(3, 5)) // 3 = min(3, 7)
type SegmentTree struct {
	offset int
	inf    interface{}
	data   []interface{}
	merge  interface{}
}

func IntMergerMin(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func FloatMergerMin(a, b float64) float64 {
	if a < b {
		return a
	}
	return b
}

func StringMergerMin(a, b string) string {
	strSlice := sort.StringSlice([]string{a, b})
	strSlice.Sort()
	if a == strSlice[0] {
		return a
	}
	return b
}

func InitSegmentTree(a, inf, merge interface{}) *SegmentTree {
	av := reflect.ValueOf(a)
	n := av.Len()
	size := 1
	for size < n {
		size *= 2
	}
	data := make([]interface{}, size*2)
	for j, i := 0, size-1; i < size+n-1; i++ {
		data[i] = av.Index(j).Interface()
		j++
	}
	for i := size + n - 1; i < size*2; i++ {
		data[i] = inf
	}

	for i := size - 2; i >= 0; i-- {
		data[i] = reflect.ValueOf(merge).
			Call([]reflect.Value{reflect.ValueOf(data[i*2+1]), reflect.ValueOf(data[i*2+2])})[0].
			Interface()
	}

	return &SegmentTree{
		inf:    inf,
		offset: size,
		data:   data,
		merge:  merge,
	}
}

func (tree *SegmentTree) GetRange(from, to int) interface{} {
	return tree.getRange(from, to, 0, 0, tree.offset)
}

func (tree *SegmentTree) getRange(from, to, index, left, right int) interface{} {
	if to <= left || right <= from {
		return tree.inf
	}
	if from <= left && right <= to {
		return tree.data[index]
	}
	med := (left + right) / 2
	lvalue := tree.getRange(from, to, index*2+1, left, med)
	rvalue := tree.getRange(from, to, index*2+2, med, right)

	return reflect.ValueOf(tree.merge).
		Call([]reflect.Value{reflect.ValueOf(lvalue), reflect.ValueOf(rvalue)})[0].
		Interface()
}

func (tree *SegmentTree) UpdateAt(index int, value interface{}) {
	idx := tree.offset - 1 + index
	tree.data[idx] = value
	for idx >= 1 {
		parent := idx / 2
		left := parent * 2
		right := parent*2 + 1
		tree.data[parent] = reflect.ValueOf(tree.merge).
			Call([]reflect.Value{reflect.ValueOf(tree.data[left]), reflect.ValueOf(tree.data[right])})[0].
			Interface()
		idx = parent
	}
}

// }}}
// UnionFind {{{
// u := NewUnionFind(3)
// u.Unit(0, 1)
// printf("%v\n", u.Same(0, 1)) // true
// printf("%v\n", u.Same(0, 2)) // false
type UnionFind struct {
	par   []int // 親
	rank  []int // 木の深さ
	count int   // 要素数
}

func NewUnionFind(count int) *UnionFind {
	par := make([]int, count)
	rank := make([]int, count)
	for i := 0; i < count; i++ {
		par[i] = i
		rank[i] = 0
	}
	return &UnionFind{par: par, rank: rank, count: count}
}

func (uf UnionFind) Find(x int) int {
	if uf.par[x] == x {
		return x
	} else {
		uf.par[x] = uf.par[uf.par[x]]
		return uf.Find(uf.par[x])
	}
}

func (uf *UnionFind) Unit(x, y int) {
	x = uf.Find(x)
	y = uf.Find(y)
	if x == y {
		return
	} else if uf.rank[x] < uf.rank[y] {
		uf.par[x] = y
	} else {
		uf.par[y] = x
		if uf.rank[x] == uf.rank[y] {
			uf.rank[x]++
		}
	}
}

func (uf UnionFind) Same(x, y int) bool {
	return uf.Find(x) == uf.Find(y)
}

//}}}
// Prime {{{
const Q int = 10010

var isPrime [Q]bool
var primeList []int

func initPrime() {
	for i := 0; i < Q; i++ {
		isPrime[i] = true
	}
	isPrime[0], isPrime[1] = false, false
	for i := 2; i < Q; i++ {
		if !isPrime[i] {
			continue
		}
		primeList = append(primeList, i)
		for k := i * 2; k < Q; k += i {
			isPrime[k] = false
		}
	}
}

// }}}
// Combination {{{
var memo [1000][1000]int

func c(n, k, m int) int {
	if memo[n][k] != 0 {
		return memo[n][k]
	}

	if n == k {
		memo[n][k] = 1
	} else if k == 0 {
		memo[n][k] = 1
	} else {
		memo[n][k] = (c(n-1, k-1, m) + c(n-1, k, m)) % m
	}
	return memo[n][k]
}

// 重複組合せ O(n+k)
func hcomp(n, k, m int) int {
	return c(k+n-1, k, m)
}

// }}}
// GCD {{{
func GCD(x, y int) int {
	if x > y {
		return GCD(y, x)
	} else if x == 0 {
		return y
	}
	return GCD(y%x, x)
}

// }}}
