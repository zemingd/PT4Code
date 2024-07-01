package main

import (
	"bufio"
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

	dist := make([]int, W*H*4)
	for i := 0; i < W*H*4; i++ {
		dist[i] = Inf
	}

	q := Heap{}
	for i := 0; i < 4; i++ {
		q = append(q, State{
			Cost: 0,
			ID:   toID(x1, y1, i),
		})
	}
	push := func(dir, x, y, cost int) {
		if c[y][x] == '@' {
			return
		}
		id := toID(x, y, dir)
		if dist[id] < Inf {
			return
		}
		dist[id] = cost
		q.push(State{
			Cost: cost,
			ID:   id,
		})
	}

	for len(q) > 0 {
		now := q.pop()
		x, y, dir := splatID(now.ID)
		// if c[y][x] == '@' {
		// 	continue
		// }
		// if dist[now.ID] <= now.Cost {
		// 	continue
		// }
		// dist[now.ID] = now.Cost
		if x == x2 && y == y2 {
			break
		}
		for i := 0; i < 4; i++ {
			push(i, x, y, (now.Cost+K-1)/K*K)
			// q.push(State{
			// 	Cost: (,
			// 	ID:   toID(x, y, i),
			// })
		}
		nx := x + dx[dir]
		ny := y + dy[dir]
		if 0 <= nx && nx < W && 0 <= ny && ny < H {
			push(dir, nx, ny, now.Cost+1)
			// q.push(State{
			// 	Cost: now.Cost + 1,
			// 	ID:   toID(nx, ny, dir),
			// })
		}
	}
	ans := Inf
	for i := 0; i < 4; i++ {
		id := toID(x2, y2, i)
		if dist[id] < ans {
			d2 := (dist[id] + K - 1) / K
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

func (h *Heap) push(v HeapElement) {
	*h = append(*h, v)
}
func (h *Heap) pop() HeapElement {
	v := (*h)[0]
	*h = (*h)[1:]
	return v
}

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
