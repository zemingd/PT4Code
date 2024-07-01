package main

import (
	"bufio"
	"fmt"
	"image"
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
	fmt.Println(solve(grid, K, x1, y1, x2, y2))
}

func solve(grid []string, K, x1, y1, x2, y2 int) int {
	H := len(grid)
	W := len(grid[0])

	start := Point{x1 - 1, y1 - 1}
	goal := Point{x2 - 1, y2 - 1}

	q := []State{State{start, 0}}
	visited := make(map[Point]bool)

	for len(q) > 0 {
		var now State
		q, now = q[1:], q[0]
		if now.Point == goal {
			return now.Count
		}

		if visited[now.Point] {
			continue
		}
		visited[now.Point] = true

		dirx := []int{1, -1, 0, 0}
		diry := []int{0, 0, 1, -1}

		for dir := 0; dir < 4; dir++ {
			for i := 1; i <= K; i++ {
				x := now.Point.X + i*dirx[dir]
				y := now.Point.Y + i*diry[dir]
				if x < 0 || x >= W || y < 0 || y >= H {
					break
				}
				if grid[y][x] == '@' {
					break
				}
				q = append(q, State{Count: now.Count + 1, Point: Point{X: x, Y: y}})
			}
		}
	}
	return -1
}

type Point = image.Point

type State struct {
	Point Point
	Count int
}

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
