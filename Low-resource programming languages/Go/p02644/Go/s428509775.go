package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"os"
)

const Inf = 1 << 60

func main() {
	H, W, K := ReadInt(), ReadInt(), ReadInt()
	x1, y1, x2, y2 := ReadInt()-1, ReadInt()-1, ReadInt()-1, ReadInt()-1
	x1, y1 = y1, x1
	x2, y2 = y2, x2
	c := make([]string, H)
	for y := 0; y < H; y++ {
		c[y] = ReadString()
	}

	var dx = []int{1, 0, -1, 0}
	var dy = []int{0, 1, 0, -1}

	toID := func(x, y, dir int) int {
		return 4*(W*y+x) + dir
	}
	splatID := func(id int) (x, y, dir int) {
		return id / 4 % W, id / 4 / W, id % 4
	}

	d := make([]int, W*H*4)
	for i := 0; i < W*H*4; i++ {
		d[i] = Inf
	}

	q := Heap{}
	for i := 0; i < 4; i++ {
		q = append(q, State{
			Cost: 0,
			ID:   toID(x1, y2, i),
		})
	}
	for len(q) > 0 {
		now := q.pop()
		x, y, dir := splatID(now.ID)
		if c[y][x] == '@' {
			continue
		}
		if d[now.ID] <= now.Cost {
			continue
		}
		d[now.ID] = now.Cost
		for i := 0; i < 4; i++ {
			nx := x + dx[i]
			ny := y + dy[i]
			if 0 <= nx && nx < W && 0 <= ny && ny < H {
				if dir == i {
					q.push(State{
						Cost: now.Cost + 1,
						ID:   toID(nx, ny, i),
					})
				} else {
					q.push(State{
						Cost: (now.Cost+K-1)/K*K + 1,
						ID:   toID(nx, ny, i),
					})
				}
			}
		}
	}
	ans := Inf
	for i := 0; i < 4; i++ {
		id := toID(x2, y2, i)
		if d[id] < ans {
			d2 := (d[id] + K - 1) / K
			if d2 < ans {
				ans = d2
			}
		}
	}
	if ans < Inf {
		fmt.Println(ans)
	} else {
		fmt.Println(-1)
	}
}

type State struct {
	Cost, ID int
}

type HeapElement = State
type Heap []HeapElement

func (h Heap) Less(i, j int) bool    { return h[i].Cost < h[j].Cost }
func (h Heap) Len() int              { return len(h) }
func (h Heap) Swap(i, j int)         { h[i], h[j] = h[j], h[i] }
func (h *Heap) Push(x interface{})   { *h = append(*h, x.(HeapElement)) }
func (h *Heap) Pop() (x interface{}) { *h, x = (*h)[:len(*h)-1], (*h)[len(*h)-1]; return }
func (h *Heap) push(v HeapElement)   { heap.Push(h, v) }
func (h *Heap) pop() HeapElement     { return heap.Pop(h).(HeapElement) }

var reader = bufio.NewReader(os.Stdin)

func Scan(a ...interface{}) {
	if _, err := fmt.Fscan(reader, a...); err != nil {
		panic(err)
	}
}
func ReadInt() (i int)       { Scan(&i); return }
func ReadString() (s string) { Scan(&s); return }
func ReadInts(n int) []int {
	v := make([]int, n)
	for i := 0; i < n; i++ {
		Scan(&v[i])
	}
	return v
}
