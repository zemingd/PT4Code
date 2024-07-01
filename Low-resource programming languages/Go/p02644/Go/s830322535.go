package main

import (
	"bufio"
	"errors"
	"fmt"
	"io"
	"math"
	"os"
	"strconv"
)

func main() {
	sc := NewScanner(os.Stdin)
	h, _ := sc.NextInt()
	w, _ := sc.NextInt()
	k, _ := sc.NextInt()
	x1, _ := sc.NextInt()
	y1, _ := sc.NextInt()
	x2, _ := sc.NextInt()
	y2, _ := sc.NextInt()
	stage := make([]string, h)
	for i := 0; i < h; i++ {
		sc.Scan()
		stage[i] = sc.Text()
	}
	ans := solve(h, w, k, x1-1, y1-1, x2-1, y2-1, stage)
	fmt.Println(ans)
}

type point struct {
	x, y, dist int
}

var inf = math.MaxInt64
var dxs, dys = []int{0, 0, -1, 1}, []int{-1, 1, 0, 0}

func solve(h, w, k, x1, y1, x2, y2 int, stage []string) int {
	runes := make([][]rune, h)
	for i := range runes {
		runes[i] = make([]rune, w)
		for j := range runes[i] {
			runes[i][j] = []rune(stage[i])[j]
		}
	}
	dists := make([][]int, h)
	for i := range dists {
		dists[i] = make([]int, w)
		for j := range dists[i] {
			dists[i][j] = inf
		}
	}
	dists[x1][y1] = 0

	// q := priorityQueue{}
	q := []point{}
	// heap.Push(&q, point{x1, y1, dists[x1][y1]})
	q = append(q, point{x1, y1, dists[x1][y1]})
	// for len(q) > 0 {
	for idx := 0; idx < len(q); idx++ {
		// p := heap.Pop(&q).(point)
		p := q[idx]
		if p.x == x2 && p.y == y2 {
			return dists[x2][y2]
		}
		for d := range dxs {
			for i := 1; i <= k; i++ {
				x, y := p.x+i*dxs[d], p.y+i*dys[d]
				if x < 0 || h <= x || y < 0 || w <= y {
					break
				}
				if runes[x][y] == '@' {
					break
				}
				if dists[x][y] <= p.dist {
					break
				}
				if dists[x][y] == p.dist+1 {
					continue
				}
				// heap.Push(&q, point{x, y, p.dist + 1})
				q = append(q, point{x, y, p.dist + 1})
				dists[x][y] = p.dist + 1
			}
		}
	}
	return -1
}

// Scanner is a wrapper of bufio.Scanner which is customized for competitive programing.
type Scanner struct {
	bufio.Scanner
}

// NewScanner is a constructor for Scanner.
func NewScanner(r io.Reader) *Scanner {
	sc := Scanner{*bufio.NewScanner(r)}
	sc.Buffer([]byte{}, math.MaxInt64)
	sc.Split(bufio.ScanWords)
	return &sc
}

// NextInt reads a integer from io stream.
func (sc *Scanner) NextInt() (int, error) {
	if !sc.Scan() {
		return -1, errors.New("failed to scan")
	}
	return strconv.Atoi(sc.Text())
}
