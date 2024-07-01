package main

import (
	"fmt"
)

var H, W int
var s string
var max int
var dir = [4][2]int{{1, 0}, {0, 1}, {-1, 0}, {0, -1}}

func bfs(blacks [][2]int, field [][]bool) int {
	now := blacks
	visited := map[[2]int]bool{}

	var nextNow [][2]int
	count := 0
	for {
		for _, n := range now {
			for _, d := range dir {
				next := [2]int{n[0] + d[0], n[1] + d[1]}
				if 0 <= next[0] && next[0] <= H-1 && 0 <= next[1] && next[1] <= W-1 {
					if !visited[next] {
						if !field[next[0]][next[1]] {
							field[next[0]][next[1]] = true
							nextNow = append(nextNow, next)
							visited[next] = true
						}
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
	return count
}

func main() {
	fmt.Scan(&H, &W)
	var field [][]bool
	field = make([][]bool, H)
	var blacks [][2]int
	for h := 0; h < H; h++ {
		field[h] = make([]bool, W)
		fmt.Scan(&s)
		for w := 0; w < W; w++ {
			if s[w] == '#' {
				field[h][w] = true
				blacks = append(blacks, [2]int{h, w})
			} else {
				field[h][w] = false
			}
		}
	}
	fmt.Println(bfs(blacks, field))
}
