package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"io"
	"os"
	"strconv"
)

const mod = 1000000007
const facNum = 300001
const MAX_A = 1000000 + 5
const INF = 123456789

var cost [][]int
var K int
var H int
var W int
var G [][]rune
var dist []int

var dx = []int{-1, 0, 1, 0}
var dy = []int{0, -1, 0, 1}

func main() {
	sc := newScanner(os.Stdin)
	H, W, K = sc.i(), sc.i(), sc.i()
	SX, SY, GX, GY := sc.i(), sc.i(), sc.i(), sc.i()
	SX--
	SY--
	GX--
	GY--

	G = make([][]rune, H)
	for i := 0; i < H; i++ {
		g := make([]rune, W)
		b := sc.s()
		for index, r := range b {
			g[index] = r
		}
		G[i] = g
	}
	dist = make([]int, H*W*4)
	for i := 0; i < H*W*4; i++ {
		dist[i] = INF
	}

	toID := func(x, y, v int) int {
		return (x*W+y)*4 + v
	}
	modCeilK := func(x int) int {
		return (x + K - 1) / K * K
	}
	q := &PriorityQueue{}
	heap.Init(q)
	push := func(id, x int) {
		if dist[id] <= x {
			return
		}
		dist[id] = x
		heap.Push(q, &Item{x, id})
		//q.Push()
	}
	push(toID(SX, SY, 0), 0)
	for len(*q) > 0 {
		item := heap.Pop(q).(*Item)
		d := item.x
		id := item.id
		if dist[id] != d {
			continue
		}
		v := id % 4
		x := id / 4 / W
		y := id / 4 % W
		for i := 0; i < 4; i++ {
			nid := toID(x, y, i)
			push(nid, modCeilK(d))
		}
		nx := dx[v] + x
		ny := dy[v] + y
		if nx < 0 || nx >= H || ny < 0 || ny >= W {
			continue
		}
		if G[nx][ny] == '@' {
			continue
		}
		nid := toID(nx, ny, v)
		push(nid, d+1)
	}
	ans := INF
	for i := 0; i < 4; i++ {
		ans = min(ans, dist[toID(GX, GY, i)])
	}
	if ans == INF {
		fmt.Println("-1")
	} else {
		fmt.Println(modCeilK(ans) / K)
	}

}

// I/O
type scanner struct {
	sc *bufio.Scanner
}

func newScanner(input io.Reader) *scanner {
	sc := bufio.NewScanner(input)
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024), int(1e+9))
	return &scanner{sc}
}

func (s *scanner) s() string {
	s.sc.Scan()
	return s.sc.Text()
}

func (s *scanner) i() int {
	i, e := strconv.Atoi(s.s())
	if e != nil {
		panic(e)
	}
	return i
}

func (s *scanner) f() float64 {
	f, e := strconv.ParseFloat(s.s(), 64)
	if e != nil {
		panic(e)
	}
	return f
}

func (s *scanner) bs() []byte {
	return []byte(s.s())
}

func (s *scanner) is(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ {
		res[i] = s.i()
	}
	return res
}

func (s *scanner) fs(n int) []float64 {
	res := make([]float64, n)
	for i := 0; i < n; i++ {
		res[i] = s.f()
	}
	return res
}

type Item struct {
	x  int
	id int
	//index int // The index of the item in the heap.
}

type PriorityQueue []*Item

func (q PriorityQueue) Len() int { return len(q) }

func (q PriorityQueue) Less(i, j int) bool { return q[i].x < q[j].x }

func (q PriorityQueue) Swap(i, j int) {
	q[i], q[j] = q[j], q[i]
	//q[i].index = i
	//q[j].index = j
}

func (q *PriorityQueue) Push(x interface{}) {
	//n := len(*q)
	item := x.(*Item)
	//item.index = n
	*q = append(*q, item)
}

func (q *PriorityQueue) Pop() interface{} {
	old := *q
	n := len(old)
	item := old[n-1]
	old[n-1] = nil
	*q = old[0 : n-1]
	return item
}

func IntSlice(n, init int) []int {
	r := make([]int, n)
	for i := range r {
		r[i] = init
	}
	return r
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
