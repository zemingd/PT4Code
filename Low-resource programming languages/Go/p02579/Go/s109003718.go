package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var H int
var W int
var Ch int
var Cw int
var Dh int
var Dw int
var S [][]byte
var m [][]int

func main() {
	H = nextInt()
	W = nextInt()
	Ch = nextInt() - 1
	Cw = nextInt() - 1
	Dh = nextInt() - 1
	Dw = nextInt() - 1

	S = make([][]byte, H)
	m = make([][]int, H)

	max := H*W + 1
	for i := 0; i < H; i++ {
		S[i] = nextBytes()
		m[i] = make([]int, W)

		for j := 0; j < W; j++ {
			m[i][j] = max
		}
	}
	m[Ch][Cw] = 0

	queue := pqNew()
	queue.Push(P{Ch, Cw, 0})

	dir := []P{
		P{-1, 0, 0},
		P{+1, 0, 0},
		P{0, -1, 0},
		P{0, +1, 0},
	}

	for !queue.Empty() {
		p := queue.Pop()
		// debug(p)
		if p.h == Dh && p.w == Dw {
			fmt.Println(p.c)
			return
		}
		// A type
		for i := 0; i < len(dir); i++ {
			d := dir[i]
			n := P{p.h + d.h, p.w + d.w, p.c}
			if out(n) {
				continue
			}
			m[n.h][n.w] = n.c
			queue.Push(n)
		}

		// B type
		for h := -2; h <= +2; h++ {
			for w := -2; w <= +2; w++ {
				if h == 0 && w == 0 {
					continue
				}

				n := P{p.h + h, p.w + w, p.c + 1}
				if out(n) {
					continue
				}
				m[n.h][n.w] = n.c
				queue.Push(n)
			}
		}
	}

	fmt.Println(-1)
}

func out(p P) bool {
	return p.h < 0 || p.w < 0 || p.h >= H || p.w >= W || S[p.h][p.w] == '#' || m[p.h][p.w] <= p.c
}

// PriorityQueue は優先度付きキューを表す
type PriorityQueue struct {
	queue []P
	size  int
}

func abs(a int) int {
	if a > 0 {
		return a
	}
	return -a
}

func pqNew() *PriorityQueue {
	pq := &PriorityQueue{queue: make([]P, 0), size: 0}

	return pq
}
func (pq *PriorityQueue) less(i, j int) bool {
	pi := pq.queue[i]
	pj := pq.queue[j]

	if pi.c != pj.c {
		return pi.c > pj.c
	}
	di := abs(pi.h-Dh) + abs(pi.w-Dw)
	dj := abs(pj.h-Dh) + abs(pi.w-Dw)
	return di < dj
}

// Push は優先度付きキューに要素を一つ追加します。
func (pq *PriorityQueue) Push(value P) {
	if len(pq.queue) == 0 || len(pq.queue)-1 == pq.size {
		pq.queue = append(pq.queue, value)
	} else {
		pq.queue[pq.size] = value
	}

	i := pq.size
	parent := pq.parent(i)

	for i > 0 && pq.less(parent, i) {
		pq.swap(parent, i)
		i := parent
		parent = pq.parent(i)
	}

	pq.size++
}

// Pop は優先度付きキューから要素を一つ取り出します。
func (pq *PriorityQueue) Pop() P {
	if pq.size == 0 {
		panic("Priority Queue is Empty")
	}
	ret := pq.queue[0]
	pq.size--
	pq.queue[0] = pq.queue[pq.size]

	i := 0
	left := pq.left(i)
	right := pq.right(i)

	for right <= pq.size {
		l := pq.less(i, left)
		r := pq.less(i, right)
		if l && (!r || pq.less(right, left)) {
			pq.swap(i, left)
			i = left
		} else if r {
			pq.swap(i, right)
			i = right
		} else {
			break
		}
		left = pq.left(i)
		right = pq.right(i)
	}

	return ret
}

// Empty は優先度付きキューが空かどうかを判断します。
func (pq *PriorityQueue) Empty() bool {
	return pq.size == 0
}

func (pq *PriorityQueue) swap(i, j int) {
	pq.queue[i], pq.queue[j] = pq.queue[j], pq.queue[i]
}
func (pq *PriorityQueue) parent(i int) int {
	return (i - 1) / 2
}
func (pq *PriorityQueue) left(i int) int {
	return i*2 + 1
}
func (pq *PriorityQueue) right(i int) int {
	return i*2 + 2
}

type P struct {
	h int
	w int
	c int
}

var stdin = initStdin()

func initStdin() *bufio.Scanner {
	bufsize := 1 * 1024 * 1024 // 1 MB
	var stdin = bufio.NewScanner(os.Stdin)
	stdin.Buffer(make([]byte, bufsize), bufsize)
	stdin.Split(bufio.ScanWords)
	return stdin
}

func nextString() string {
	stdin.Scan()
	return stdin.Text()
}

func nextBytes() []byte {
	stdin.Scan()
	return stdin.Bytes()
}

func nextInt() int {
	i, _ := strconv.Atoi(nextString())
	return i
}

func nextInt64() int64 {
	i, _ := strconv.ParseInt(nextString(), 10, 64)
	return i
}

func debug(args ...interface{}) {
	fmt.Fprintln(os.Stderr, args)
}
