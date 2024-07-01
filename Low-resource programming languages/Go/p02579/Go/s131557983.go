package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func NextStr() string {
	scanner.Scan()
	return scanner.Text()
}

func NextInt() int {
	i, _ := strconv.Atoi(NextStr())
	return i
}

type Index struct {
	h int
	w int
}

type Deque struct {
	Items []Index
}

func (d *Deque) Push(item Index) {
	d.Items = append(d.Items, item)
}

func (d *Deque) Unshift(item Index) {
	tmp := []Index{item}
	d.Items = append(tmp, d.Items...)
}

func (d *Deque) Pop() Index {
	i := len(d.Items) - 1
	defer func() {
		d.Items = d.Items[:i]
	}()
	return d.Items[i]
}

func (d *Deque) Shift() Index {
	defer func() {
		d.Items = d.Items[1:]
	}()
	return d.Items[0]
}

func main() {
	scanner.Split(bufio.ScanWords)
	h, w := NextInt(), NextInt()
	ch, cw := NextInt()-1, NextInt()-1
	dh, dw := NextInt()-1, NextInt()-1

	maze := make([]string, h)
	for i := 0; i < h; i++ {
		maze[i] = NextStr()
	}

	var deque Deque
	counts := make([][]int, h)
	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			counts[i] = append(counts[i], -1)
		}
	}

	deque.Unshift(Index{ch, cw})
	counts[ch][cw] = 0

	var warp []Index
	for i := -2; i <= 2; i++ {
		for j := -2; j <= 2; j++ {
			if i == -1 && j == 0 || i == 0 && j == 1 || i == 1 && j == 0 || i == 0 && j == -1 || i == 0 && j == 0 {
				continue
			}
			warp = append(warp, Index{i, j})
		}
	}

	var dist Index
	for len(deque.Items) > 0 {
		next := deque.Shift()
		if next.h == dh && next.w == dw {
			break
		}
		for _, idx := range []Index{{-1, 0}, {0, 1}, {1, 0}, {0, -1}} {
			dist = AddIndex(next, idx)
			if IsAPath(dist, maze) {
				if counts[dist.h][dist.w] == -1 || counts[dist.h][dist.w] > counts[next.h][next.w] {
					deque.Unshift(dist)
					counts[dist.h][dist.w] = counts[next.h][next.w]
				}
			}
		}
		for _, idx := range warp {
			dist = AddIndex(next, idx)
			if IsAPath(dist, maze) {
				if counts[dist.h][dist.w] == -1 || counts[dist.h][dist.w] > counts[next.h][next.w]+1 {
					deque.Push(dist)
					counts[dist.h][dist.w] = counts[next.h][next.w] + 1
				}
			}
		}
	}

	fmt.Println(counts[dh][dw])
}

func AddIndex(x, y Index) Index {
	return Index{x.h + y.h, x.w + y.w}
}

func IsAPath(idx Index, maze []string) (isapath bool) {
	if 0 <= idx.h && idx.h < len(maze) && 0 <= idx.w && idx.w < len(maze[0]) && maze[idx.h][idx.w] == '.' {
		isapath = true
	}
	return
}
