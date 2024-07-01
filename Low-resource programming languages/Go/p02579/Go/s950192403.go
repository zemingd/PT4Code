package main

import (
	"bufio"
	"container/list"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextFloat64() float64 {
	sc.Scan()
	i, e := strconv.ParseFloat(sc.Text(), 64)
	if e != nil {
		panic(e)
	}
	return i
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

type Bfs struct {
	Maze [][]int
	Res  [][]int

	Deque *list.List

	Height int
	Width  int

	GoalH int
	GoalW int
}

func NewBfs(maze [][]int, h, w, gh, gw int) *Bfs {
	bfs := &Bfs{
		Maze:   maze,
		Deque:  list.New(),
		Height: len(maze),
		Width:  len(maze[0]),
		GoalH:  gh,
		GoalW:  gw,
	}

	bfs.Res = make([][]int, bfs.Height)
	for i := 0; i < bfs.Height; i++ {
		bfs.Res[i] = make([]int, bfs.Width)
		for j := 0; j < bfs.Width; j++ {
			bfs.Res[i][j] = 100000000
		}
	}

	bfs.Deque.PushBack([]int{h, w, 0})
	return bfs
}

func (b *Bfs) debugRes() {
	fmt.Println("<----")
	for _, v := range b.Res {
		fmt.Println(v)
	}
	fmt.Println("---->")
}

func (b *Bfs) debugDeque() {
	for v := b.Deque.Front(); v != nil; v = v.Next() {
		fmt.Println(v)
	}
}

func (b *Bfs) search() int {
	for b.Deque.Len() > 0 {
		elm := b.Deque.Front()
		q := elm.Value.([]int)
		h, w, cost := q[0], q[1], q[2]
		b.Deque.Remove(elm)

		if h == b.GoalH && w == b.GoalW {
			return cost
		}

		dirH := []int{0, -1, 1, 0, 0}
		dirW := []int{0, 0, 0, -1, 1}
		// cost 0
		for i := 0; i < 5; i++ {
			checkH := h + dirH[i]
			checkW := w + dirW[i]

			if checkH < 0 || checkH > (b.Height-1) {
				continue
			}
			if checkW < 0 || checkW > (b.Width-1) {
				continue
			}
			if b.Res[checkH][checkW] <= cost {
				continue
			}

			if b.Maze[checkH][checkW] == 0 {
				b.Res[checkH][checkW] = cost
				if i > 0 {
					b.Deque.PushFront([]int{checkH, checkW, cost})
				}
			} else {
				b.Res[checkH][checkW] = -1
			}
		}

		// cost 1
		for i := -2; i <= 2; i++ {
			for j := -2; j <= 2; j++ {
				checkH := h + i
				checkW := w + j

				if checkH < 0 || checkH > (b.Height-1) {
					continue
				}
				if checkW < 0 || checkW > (b.Width-1) {
					continue
				}
				if i == 0 && j == 0 {
					continue
				}
				if b.Res[checkH][checkW] <= cost+1 {
					continue
				}

				if b.Maze[checkH][checkW] == 0 {
					b.Res[checkH][checkW] = cost + 1
					b.Deque.PushBack([]int{checkH, checkW, cost + 1})
				} else {
					b.Res[checkH][checkW] = -1
				}
			}
		}
	}
	return -1
}

func main() {
	sc.Split(bufio.ScanWords)

	h, w := nextInt(), nextInt()
	ch, cw := nextInt(), nextInt()
	dh, dw := nextInt(), nextInt()

	ch -= 1
	cw -= 1
	dh -= 1
	dw -= 1

	maze := make([][]int, h)
	maze[0] = make([]int, w)

	for i := 0; i < h; i++ {
		maze[i] = make([]int, w)
		n := nextString()
		for j, v := range n {
			if v == '#' {
				maze[i][j] = 1
			} else {
				maze[i][j] = 0
			}
		}
	}

	b := NewBfs(maze, ch, cw, dh, dw)
	ans := b.search()
	fmt.Println(ans)
}
