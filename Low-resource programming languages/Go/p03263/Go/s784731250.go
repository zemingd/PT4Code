package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

type Point struct {
	y int
	x int
}

type Coord struct {
	coins int
	moved bool
}

type Path struct {
	y1 int
	x1 int
	y2 int
	x2 int
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	h := scanInt(sc)
	w := scanInt(sc)

	board := make([][]Coord, h)
	for iy := 0; iy < h; iy++ {
		board[iy] = make([]Coord, w)
		for ix := 0; ix < w; ix++ {
			coins := scanInt(sc)
			board[iy][ix] = Coord{coins: coins, moved: false}
		}
	}

	paths := make([]Path, 0)
	for iy := 0; iy < h; iy++ {
		for ix := 0; ix < w; ix++ {
			if board[iy][ix].coins%2 == 0 {
				continue
			}

			p := findNearestOdd(board, Point{iy, ix})
			if p != nil {
				board[iy][ix].coins -= 1
				board[p.y][p.x].coins += 1
				paths = append(paths, Path{iy, ix, p.y, p.x})
			}
		}
	}

	fmt.Println(len(paths))
	for _, p := range paths {
		fmt.Printf("%d %d %d %d\n", p.y1+1, p.x1+1, p.y2+1, p.x2+1)
		// fmt.Println(p)
	}
}

func findNearestOdd(board [][]Coord, p Point) *Point {
	passed := make(map[Point]bool)
	passed[p] = true
	return search(board, passed, p, []Point{})
}

func search(board [][]Coord, passed map[Point]bool, prev Point, ps []Point) *Point {
	for _, p := range neighbors(board, prev) {
		if passed[p] {
			continue
		}
		passed[p] = true

		coord := board[p.y][p.x]
		if coord.moved {
			continue
		}

		if coord.coins%2 == 1 {
			markPath(board, ps)
			return &p
		}
		got := search(board, passed, p, append(ps, p))
		if got != nil {
			return got
		}
	}
	return nil
}

func neighbors(board [][]Coord, p Point) []Point {
	h := len(board)
	w := len(board[0])
	ps := make([]Point, 0, 4)
	if p.x < w-1 {
		ps = append(ps, Point{p.y, p.x + 1})
	}
	if p.y < h-1 {
		ps = append(ps, Point{p.y + 1, p.x})
	}
	if p.x > 0 {
		ps = append(ps, Point{p.y, p.x - 1})
	}
	if p.y > 0 {
		ps = append(ps, Point{p.y - 1, p.x})
	}
	return ps
}

func markPath(board [][]Coord, ps []Point) {
	for _, p := range ps {
		board[p.y][p.x].moved = true
	}
}

func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}
