package main

import (
	. "fmt"
	"bufio"
	"os"
	"strconv"
)

const INF int = 1e9
const LINF int64 = 1e9
const MOD int = INF + 7

func main() {
	next := NewScanner()
	n, k := next.Int(), next.Int()
	a := make([]int, k)
	for i := 0; i < k; i++ {
		a[i] = next.Int()
	}
	
	for i := n; ; i++ {
		
		pos := i
		f := true
		for pos > 0 {
			for _, v := range a {
				if v == pos % 10 {
					f = false
					pos = 0
					break
				}
			}
			pos /= 10
		}

		if f {
			Println(i)
			return
		}
	}
}

// Scanner begin
type scanner struct {
	r	*bufio.Reader
	buf []byte
	p	int
}

func NewScanner() *scanner {
	return &scanner{r: bufio.NewReaderSize(os.Stdin, 10000)}
}

func (s *scanner) next() string {
	s.pre()
	start := s.p

	for ; s.p < len(s.buf); s.p++ {
		if s.buf[s.p] == ' ' {
			break
		}
	}

	result := string(s.buf[start:s.p])
	s.p++
	return result
}

func (s *scanner) Line() string {
	s.pre()
	start := s.p
	s.p = len(s.buf)

	return string(s.buf[start:])
}

func (s *scanner) Int() int {
	v, _ := strconv.Atoi(s.next())
	return v
}

func (s *scanner) Int64() int64 {
	v, _ := strconv.ParseInt(s.next(), 10, 64)
	return v
}

func (s *scanner) Float() float32 {
	f, _ := strconv.ParseFloat(s.next(), 32)

	return float32(f)
}

func (s *scanner) Float64() float64 {
	f, _ := strconv.ParseFloat(s.next(), 64)

	return f
}

func (s *scanner) Bool() bool {
	b, _ := strconv.ParseBool(s.next())

	return b
}

func (s *scanner) String() string {
	return s.next()
}


func (s *scanner) pre() {
	if s.p >= len(s.buf) {
		s.readLine()
		s.p = 0
	}
}

func (s *scanner) readLine() {
	s.buf = make([]byte, 0)
	for {
		l, p, e := s.r.ReadLine()
		if e != nil {
			panic(e)
		}
		s.buf = append(s.buf, l...)
		if !p {
			break
		}
	}
}

// Standard Functions begin
func Itob(i int) bool {
	if i == 0 {
		return false
	} else {
		return true
	}
}

func Btoi(f bool) int {
	if f {
		return 1
	} else {
		return 0
	}
}

func min(a ...int) int {
	ret := a[0]
	for _, e := range a {
		if e < ret {
			ret = e
		}
	}

	return ret
}

func max(a ...int) int {
	ret := a[0]
	for _, e := range a {
		if e > ret {
			ret = e
		}
	}

	return ret
}

func minInt64(a ...int64) int64 {
	ret := a[0]
	for _, e := range a {
		if e < ret {
			ret = e
		}
	}

	return ret
}

func maxInt64(a ...int64) int64 {
	ret := a[0]
	for _, e := range a {
		if e > ret {
			ret = e
		}
	}

	return ret
}

func minFloat(a ...float32) float32 {
	ret := a[0]
	for _, e := range a {
		if e < ret {
			ret = e
		}
	}

	return ret
}

func maxFloat(a ...float32) float32 {
	ret := a[0]
	for _, e := range a {
		if e > ret {
			ret = e
		}
	}

	return ret
}

func minFloat64(a ...float64) float64 {
	ret := a[0]
	for _, e := range a {
		if e < ret {
			ret = e
		}
	}

	return ret
}

func maxFloat64(a ...float64) float64 {
	ret := a[0]
	for _, e := range a {
		if e > ret {
			ret = e
		}
	}

	return ret
}

func minOther(comp Comparator, a ...interface{}) interface{} {
	ret := a[0]
	for _, e := range a {
		if comp(e, ret) {
			ret = e
		}
	}

	return ret
}

func maxOther(comp Comparator, a ...interface{}) interface{} {
	ret := a[0]
	for _, e := range a {
		if comp(ret, a) {
			ret = e
		}
	}

	return ret
}

func abs(a int) int {
	if a < 0 {
		return -a
	} else {
		return a
	}
}

func absInt64(a int64) int64 {
	if a < 0 {
		return -a
	} else {
		return a
	}
}

func absFloat(a float32) float32 {
	if a < 0 {
		return -a
	} else {
		return a
	}
}

func absFloat64(a float64) float64 {
	if a < 0 {
		return -a
	} else {
		return a
	}
}

func ModPow(x, n, mod int) int {
	ret := 1

	for ; n > 0; n /= 2 {
		if (n & 1) == 1 {
			ret = ret * x % mod
		}

		x = x * x % mod
	}

	
	return ret
}

func ModPowInt64(x, n, mod int64) int64 {
	var ret int64 = 1

	for ; n > 0; n /= 2 {
		if (n & 1) == 1 {
			ret = ret * x % mod
		}

		x = x * x % mod
	}

	return ret
}

func IntComp(a, b interface{}) bool {
	na := a.(int)
	nb := b.(int)

	return na < nb
}

func Int64Comp(a, b interface{}) bool {
	na := a.(int64)
	nb := b.(int64)

	return na < nb
}

func FloatComp(a, b interface{}) bool {
	na := a.(float32)
	nb := b.(float32)

	return na < nb
}

func Float64Comp(a, b interface{}) bool {
	na := a.(float64)
	nb := b.(float64)

	return na < nb
}

// Standard Structs begin
//1 Line Structs
type Merger func(a, b interface{}) interface{}
type Comparator func(a, b interface{}) bool

// Pair begin
type pair struct {
	first, second int64
}

func Newpair() *pair {
	return &pair {
		first : 0,
		second : 0,
	}
}

func (p pair) Less(q pair) bool {
	if p.first < q.first {
		return true
	} else if p.first == q.first {
		return p.second < q.second
	} else {
		return false
	}
}

func (p pair) String() string {
	return Sprint(p.first, p.second)
}

func PairComp(p, q interface{}) bool {
	np := p.(pair)
	nq := q.(pair)

	return np.Less(nq)
}

// Priority Queue begin
// Method
// push : Push the value to the priority queue.
// top  : Return the (Min / Max) value in the priority queue.
// pop  : Delete the (Min / Max) value in the priority queue.
// size : Return the number of values in the priority queue.
// empty : Return Is priority queue has the values?
type PriorityQueue struct {
	data	[]interface{}
	comp	Comparator
}

func NewPriorityQueue(comp Comparator) *PriorityQueue {
	return &PriorityQueue{make([]interface{}, 0), comp}
}

func (qu *PriorityQueue) push(x interface{}) {
	n := len(qu.data)
	qu.data = append(qu.data, x)

	for n != 0 {
		par := (n - 1) / 2
		
		if qu.comp(qu.data[par], qu.data[n]) {
			qu.data[par], qu.data[n] = qu.data[n], qu.data[par]
		}

		n = par
	}
}

func (qu *PriorityQueue) pop() {
	n := len(qu.data) - 1
	qu.data[0] = qu.data[n]
	qu.data = qu.data[:n]

	for i, j := 0, 1; j < n; {
		j = 2 * i + 1

		if (j != n - 1) && qu.comp(qu.data[j], qu.data[j + 1]) {
			j++
		}

		if qu.comp(qu.data[i], qu.data[j]) {
			qu.data[i], qu.data[j] = qu.data[j], qu.data[i]
		}

		i = j
	}
}

func (qu *PriorityQueue) top() interface{} {
	return qu.data[0]
}

func (qu *PriorityQueue) size() int {
	return len(qu.data)
}

func (qu *PriorityQueue) empty() bool {
	return len(qu.data) == 0
}

//Segment Tree
//update : Update k-th value of SegmentTree.data to x
//get	 : Get the value in range [a, b)
type SegmentTree struct {
	data	[]interface{}
	id		interface{}
	size	int
	merge	Merger
}

func NewSegmentTree(n int, id interface{}, merge Merger) *SegmentTree {
	sz := 1
	for sz < n {
		sz *= 2
	}

	data := make([]interface{}, sz * 2  - 1)
	for i := 0; i < sz * 2 - 1; i++ {
		data[i] = id
	}

	return &SegmentTree{data, id, sz, merge}
}

func (seg *SegmentTree) update(k int, x interface{}) {
	k += seg.size - 1;
	seg.data[k] = x

	for k > 0 {
		k = (k - 1) / 2

		seg.data[k] = seg.merge(seg.data[2 * k + 1], seg.data[2 * k + 2])
	}
}

func (seg *SegmentTree) get(a, b int) interface{} {
	return seg._get(a, b, 0, 0, seg.size)
}

func (seg *SegmentTree) _get(a, b, k, l, r int) interface{} {
	if b <= l || r <= a {
		return seg.id
	}

	if a <= l && r <= b {
		return seg.data[k]
	}

	L := seg._get(a, b, 2 * k + 1, l, (l + r) / 2)
	R := seg._get(a, b, 2 * k + 2, (l + r) / 2, r)
	return seg.merge(L, R)
}

func (seg *SegmentTree) String() string {
	return Sprint(seg.data[seg.size - 1:])
}