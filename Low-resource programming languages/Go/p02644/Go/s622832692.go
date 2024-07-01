package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

func main() {
	scanner := NewScanner()

	h, w, k := scanner.NextInt(), scanner.NextInt(), scanner.NextInt()

	type Point struct {
		X int
		Y int
	}
	start := Point{
		X: scanner.NextInt() - 1,
		Y: scanner.NextInt() - 1,
	}
	goal := Point{
		X: scanner.NextInt() - 1,
		Y: scanner.NextInt() - 1,
	}
	var (
		field [][]bool // trueなら通れる
		dist  [][]int
	)
	for i := 0; i < h; i++ {
		field = append(field, make([]bool, w))
		dist = append(dist, make([]int, w))
		for j := 0; j < w; j++ {
			dist[i][j] = h * w
		}
		cs := scanner.NextWord()
		for j := 0; j < w; j++ {
			field[i][j] = cs[j:j+1] == "."
		}
	}
	q := []Point{start}
	dist[start.X][start.Y] = 0
	for len(q) > 0 {
		p := q[0]
		d := dist[p.X][p.Y]
		for _, pp := range []Point{{1, 0}, {-1, 0}, {0, 1}, {0, -1}} {
			for i := 1; i <= k; i++ {
				x, y := p.X+pp.X*i, p.Y+pp.Y*i
				if x < 0 || x >= h || y < 0 || y >= w || !field[x][y] || dist[x][y] < d+1 {
					break
				}
				if dist[x][y] > d+1 {
					dist[x][y] = d + 1
					q = append(q, Point{x, y})
				}
			}
		}
		q = q[1:]
	}
	ans := dist[goal.X][goal.Y]
	if ans == h*w {
		fmt.Println(-1)
	} else {
		fmt.Println(ans)
	}
}

type Scanner struct {
	scanner *bufio.Scanner
}

func NewScanner() *Scanner {
	s := bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)
	return &Scanner{s}
}

func (s *Scanner) NextWord() string {
	if !s.scanner.Scan() {
		log.Fatal("failed to find the next word")
	}
	return s.scanner.Text()
}

func (s *Scanner) NextInt() int {
	str := s.NextWord()
	i, err := strconv.Atoi(str)
	if err != nil {
		log.Fatalf("failed to parse %s to int", str)
	}
	return i
}
