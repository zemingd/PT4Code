package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	H, _, K := nextInt(), nextInt(), nextInt()
	y1, x1, y2, x2 := nextInt(), nextInt(), nextInt(), nextInt()

	grid := make([]string, H)
	for i := 0; i < H; i++ {
		grid[i] = next()
	}
	fmt.Println(solve(grid, K, x1-1, y1-1, x2-1, y2-1))
}

func solve(grid []string, k, x1, y1, x2, y2 int) int {
	h := len(grid)
	w := len(grid[0])

	dist := make([][]int, h)
	for i := range dist {
		dist[i] = make([]int, w)
		for j := range dist[i] {
			dist[i][j] = -1
		}
	}

	q := make([][]int, 0)
	q = append(q, []int{y1, x1, 0})
	dist[y1][x1] = 0
	dirX := []int{-1, 0, 1, 0}
	dirY := []int{0, 1, 0, -1}
	for len(q) > 0 {
		now := q[0]
		q = q[1:]
		y, x, st := now[0], now[1], now[2]
		for i := range dirX {
			dx, dy := dirX[i], dirY[i]
			for j := 1; j <= k; j++ {
				nx, ny := x+dx, y+dy
				if nx >= 0 && nx < w && ny >= 0 && ny < h && grid[ny][nx] == '.' {
					dx += dirX[i]
					dy += dirY[i]
					if dist[ny][nx] != -1 {
						if dist[ny][nx] <= st {
							break
						} else {
							continue
						}
					}
					dist[ny][nx] = st + 1
					q = append(q, []int{ny, nx, st + 1})
				} else {
					break
				}
			}
		}
	}

	if dist[y2][x2] == -1 {
		return -1
	}
	return dist[y2][x2]
}

func solve2(grid []string, K, x1, y1, x2, y2 int) int {
	H := len(grid)
	W := len(grid[0])

	startX, startY := x1-1, y1-1
	goalX, goalY := x2-1, y2-1

	q := []State{State{startX, startY, 0}}
	visited := make([][]bool, H)
	for i := 0; i < H; i++ {
		visited[i] = make([]bool, W)
	}

	for len(q) > 0 {
		var now State
		q, now = q[1:], q[0]

		dirx := []int{1, -1, 0, 0}
		diry := []int{0, 0, 1, -1}

		for dir := 0; dir < 4; dir++ {
			for i := 1; i <= K; i++ {
				x := now[0] + i*dirx[dir]
				y := now[1] + i*diry[dir]
				if x < 0 || x >= W || y < 0 || y >= H {
					break
				}
				if grid[y][x] == '@' {
					break
				}

				nextX, nextY := x, y
				nextCount := now[2] + 1
				if goalX == nextX && goalY == nextY {
					return nextCount
				}
				if visited[nextY][nextX] {
					continue
				}
				visited[nextY][nextX] = true

				q = append(q, State{nextX, nextY, nextCount})
			}
		}
	}
	return -1
}

type State []int

// type State struct {
// 	X, Y  int
// 	Count int
// }

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Buffer(make([]byte, 256), 1e9)
	sc.Split(bufio.ScanWords)
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}
