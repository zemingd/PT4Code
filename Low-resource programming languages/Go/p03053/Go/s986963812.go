package main

import (
	"fmt"
)

var H, W int
var s string
var max int
var dir = [4][2]int{{1, 0}, {0, 1}, {-1, 0}, {0, -1}}

func Min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func Max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func Abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func contains(s [][2]int, e [2]int) bool {
	for _, v := range s {
		if e == v {
			return true
		}
	}
	return false
}

func bfs(h, w int, field [][]int) {
	now := [][2]int{{h, w}}
	var nextNow [][2]int
	visited := [][2]int{{h, w}}
	count := 1
	for {
		for _, n := range now {
			for _, d := range dir {
				next := [2]int{n[0] + d[0], n[1] + d[1]}
				if 0 <= next[0] && next[0] <= H-1 && 0 <= next[1] && next[1] <= W-1 {
					if !contains(visited, next) {
						if field[next[0]][next[1]] > count {
							field[next[0]][next[1]] = count
							nextNow = append(nextNow, next)
						}
						visited = append(visited, next)
					}
				}
			}
		}
		if len(nextNow) <= 0 {
			break
		}
		now = make([][2]int, len(nextNow))
		for i, n := range nextNow {
			now[i] = n
		}
		nextNow = [][2]int{}
		count++
	}
}

func main() {
	fmt.Scan(&H, &W)
	var field [][]int
	field = make([][]int, H)
	var blacks [][2]int
	for h := 0; h < H; h++ {
		field[h] = make([]int, W)
		fmt.Scan(&s)
		for w := 0; w < W; w++ {
			if s[w] == '#' {
				field[h][w] = 0
				blacks = append(blacks, [2]int{h, w})
			} else {
				field[h][w] = 2 << 31
			}
		}
	}
	for _, b := range blacks {
		bfs(b[0], b[1], field)
	}
	max := 0
	for _, h := range field {
		for _, w := range h {
			max = Max(max, w)
		}
	}
	fmt.Println(max)
}
