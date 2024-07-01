package main

import (
	"fmt"
)

type q struct {
	data []point
}

type point struct {
	x, y int
}

func (q *q) q(v point) {
	q.data = append(q.data, v)
}

func (q *q) dq(v *point) {
	if len(q.data) > 0 {
		*v = q.data[0]
		q.data = q.data[1:]
	}
}

var h, w int

// var s, g point
var maze [][]byte
var d [][]int
var dx = [4]int{1, -1, 0, 0}
var dy = [4]int{0, 0, -1, 1}

func bfs(s []point) int {
	var q q
	for i := 0; i < len(s); i++ {
		d[s[i].y][s[i].x] = 0
		q.q(point{s[i].x, s[i].y})
	}
	longest := 0
	for len(q.data) > 0 {
		var p point
		q.dq(&p)
		for i := 0; i < 4; i++ {
			nx := p.x + dx[i]
			ny := p.y + dy[i]
			if 0 <= ny && ny < h && 0 <= nx && nx < w && d[ny][nx] == -1 && maze[ny][nx] != '#' {
				d[ny][nx] = d[p.y][p.x] + 1
				q.q(point{nx, ny})
				if d[ny][nx] > longest {
					longest = d[ny][nx]
				}
			}
		}
	}
	return longest
}

func main() {
	fmt.Scan(&h, &w)
	var starts []point
	maze = make([][]byte, h)
	d = make([][]int, h)
	for i := range maze {
		maze[i] = make([]byte, w)
		fmt.Scan(&maze[i])
		for j := 0; j < w; j++ {
			if maze[i][j] == '#' {
				starts = append(starts, point{j, i})
			}
		}
		d[i] = make([]int, w)
		for j := range d[i] {
			d[i][j] = -1
		}
	}
	fmt.Println(bfs(starts))
}
