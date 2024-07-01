package main

import (
	"fmt"
	"strings"
)

type point struct {
	x, y   int
	road   bool
	marked bool
}

func newPoint(x, y int, road bool) *point {
	return &point{
		x:    x,
		y:    y,
		road: road,
	}
}

type queue struct {
	arr []*point
}

func newQueue() *queue {
	return &queue{
		arr: make([]*point, 0),
	}
}

func (q *queue) enqueue(point *point) {
	q.arr = append(q.arr, point)
}

func (q *queue) dequeue() *point {
	p := q.arr[0]
	q.arr = q.arr[1:]
	return p
}

func (q *queue) empty() bool {
	return len(q.arr) == 0
}

func main() {
	var h, w int
	fmt.Scanf("%d %d", &h, &w)
	var ch, cw int
	fmt.Scanf("%d %d", &ch, &cw)
	var dh, dw int
	fmt.Scanf("%d %d", &dh, &dw)

	table := make([][]*point, 0, h)
	for i := 0; i < h; i++ {
		var row string
		fmt.Scanf("%s", &row)
		rows := make([]*point, 0, w)
		for j, v := range strings.Split(row, "") {
			rows = append(rows, newPoint(i, j, v == "."))
		}
		table = append(table, rows)
	}

	q := newQueue()
	warr := make([]*point, 0)
	start := table[ch-1][cw-1]
	start.marked = true
	q.enqueue(start)
	warr = append(warr, start)
	var count int
	for !q.empty() {
		p := q.dequeue()
		if p.x == dh-1 && p.y == dw-1 {
			fmt.Println(count)
			return
		}

		if within(p.x-1, p.y, h, w) {
			next := table[p.x-1][p.y]
			if next.road && !next.marked {
				next.marked = true
				q.enqueue(next)
				warr = append(warr, next)
			}
		}
		if within(p.x+1, p.y, h, w) {
			next := table[p.x+1][p.y]
			if next.road && !next.marked {
				next.marked = true
				q.enqueue(next)
				warr = append(warr, next)
			}
		}
		if within(p.x, p.y-1, h, w) {
			next := table[p.x][p.y-1]
			if next.road && !next.marked {
				next.marked = true
				q.enqueue(next)
				warr = append(warr, next)
			}
		}
		if within(p.x, p.y+1, h, w) {
			next := table[p.x][p.y+1]
			if next.road && !next.marked {
				next.marked = true
				q.enqueue(next)
				warr = append(warr, next)
			}
		}

		if !q.empty() {
			continue
		}
		count++

		c := make([]*point, len(warr))
		copy(c, warr)
		warr = make([]*point, 0)
		for _, p := range c {
			for x := p.x - 2; x <= p.x+2; x++ {
				for y := p.y - 2; y <= p.y+2; y++ {
					if within(x, y, h, w) {
						next := table[x][y]
						if next.road && !next.marked {
							next.marked = true
							q.enqueue(next)
							warr = append(warr, next)
						}
					}
				}
			}
		}
	}

	fmt.Println(-1)
}

func within(x, y, h, w int) bool {
	return x >= 0 && x < h && y >= 0 && y < w

}
