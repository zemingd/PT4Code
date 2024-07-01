package main

import (
	"container/list"
	"fmt"
)

func main() {
	var h, w int
	fmt.Scan(&h, &w)
	var ch, cw, dh, dw int
	fmt.Scan(&ch, &cw, &dh, &dw)
	ch--
	cw--
	dh--
	dw--

	ss := make([]string, h)
	for i := 0; i < h; i++ {
		fmt.Scan(&ss[i])
	}

	const inf int = 1e18
	// const inf int = 9

	ds := [1100][1100]int{}
	for i := 0; i < len(ds); i++ {
		for j := 0; j < len(ds[i]); j++ {
			ds[i][j] = inf
		}
	}

	dx := []int{0, 0, -1, 1}
	dy := []int{-1, 1, 0, 0}

	q := list.New()
	q.PushBack(Point{cw, ch})

	ds[ch][cw] = 0
	e := q.Front()
	for e != nil {
		p := e.Value.(Point)
		q.Remove(e)

		cx, cy := p.x, p.y
		if cx == dw && cy == dh {
			// break
		}

		for d := 0; d < len(dx); d++ {
			nx := cx + dx[d]
			ny := cy + dy[d]
			if 0 <= nx && nx < w && 0 <= ny && ny < h {
				if ds[ny][nx] > ds[cy][cx] && ss[ny][nx] == '.' {
					ds[ny][nx] = ds[cy][cx]
					q.PushFront(Point{nx, ny})
				}
			}
		}

		for ox := -2; ox <= 2; ox++ {
			for oy := -2; oy <= 2; oy++ {
				nx := cx + ox
				ny := cx + oy
				if 0 <= nx && nx < w && 0 <= ny && ny < h {
					if ds[ny][nx] == inf && ss[ny][nx] == '.' {
						ds[ny][nx] = ds[cy][cx] + 1
						q.PushBack(Point{nx, ny})
					}
				}
			}
		}
		e = q.Front()
	}

	// for i := 0; i < h; i++ {
	// 	fmt.Println(ds[i][:w])
	// }

	if ds[dh][dw] == inf {
		fmt.Println(-1)
		return
	}

	fmt.Println(ds[dh][dw])
}

// Point .
type Point struct {
	x, y int
}
