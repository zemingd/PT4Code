package main

import (
	"bufio"
	"fmt"
	"image"
	"os"
	"strconv"
)

func main() {
	H, _, K := readInt(), readInt(), readInt()
	y1, x1, y2, x2 := readInt(), readInt(), readInt(), readInt()

	grid := make([]string, H)
	for i := 0; i < H; i++ {
		grid[i] = read()
	}
	fmt.Println(solve(grid, K, x1, y1, x2, y2))
}

func solve(grid []string, K, x1, y1, x2, y2 int) int {
	H := len(grid)
	W := len(grid[0])

	start := Point{x1 - 1, y1 - 1}
	goal := Point{x2 - 1, y2 - 1}

	q := []State{State{Point: start, Count: 0}}
	visited := make(map[Point]bool)

	for len(q) > 0 {
		now := q[0]
		q = q[1:]
		dirs := []Point{{1, 0}, {0, 1}, {-1, 0}, {0, -1}}
		for dir := 0; dir < 4; dir++ {
			for i := 1; ; i++ {
				next := now.Point.Add(dirs[dir].Mul(i))
				if next.X < 0 || next.X >= W || next.Y < 0 || next.Y >= H {
					break
				}
				if grid[next.Y][next.X] == '@' {
					break
				}

				nextCount := now.Count + (i+K-1)/K
				if goal == next {
					return nextCount
				}
				if visited[next] {
					break
				}
				visited[next] = true

				q = append(q, State{Point: next, Count: nextCount})
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

func read() string {
	sc.Scan()
	return sc.Text()
}

func readInt() int {
	a, _ := strconv.Atoi(read())
	return a
}
