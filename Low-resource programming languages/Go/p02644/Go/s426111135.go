package main

import (
	"bufio"
	"container/heap"
	"errors"
	"fmt"
	"io"
	"math"
	"os"
	"strconv"
	"strings"
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

type state struct {
	x, y, dir, dist, used int
}

func (s *state) less(t *state) bool {
	if s.dist == t.dist {
		return s.used < t.used
	}
	return s.dist < t.dist

}

type priorityQueue []*state

func (p priorityQueue) Len() int            { return len(p) }
func (p priorityQueue) Less(i, j int) bool  { return p[i].less(p[j]) }
func (p priorityQueue) Swap(i, j int)       { p[i], p[j] = p[j], p[i] }
func (p *priorityQueue) Push(x interface{}) { *p = append(*p, x.(*state)) }
func (p *priorityQueue) Pop() interface{} {
	x := (*p)[len(*p)-1]
	*p = (*p)[:len(*p)-1]
	return x
}
func (p priorityQueue) String() string {
	out := ""
	for _, v := range p {
		out += fmt.Sprintf("%+v ", *v)
	}
	return strings.TrimSpace(out)
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
	bests := make([][][]*state, h)
	for x := range bests {
		bests[x] = make([][]*state, w)
		for y := range bests[x] {
			bests[x][y] = make([]*state, len(dxs))
			for d := range bests[x][y] {
				bests[x][y][d] = &state{x, y, d, inf, inf}
			}
		}
	}

	q := priorityQueue{}
	s := &state{x1, y1, -1, 0, 0}
	for d := range dxs {
		bests[x1][y1][d] = s
	}
	heap.Push(&q, s)
	for len(q) > 0 {
		//fmt.Println(q.String())
		p := heap.Pop(&q).(*state)
		if p.x == x2 && p.y == y2 {
			return p.dist
		}
		for d := range dxs {
			if d+p.dir == 1 || d+p.dir == 5 {
				continue
			}
			x, y := p.x+dxs[d], p.y+dys[d]
			if x < 0 || h <= x || y < 0 || w <= y {
				continue
			}
			if runes[x][y] == '@' {
				continue
			}
			var dist, used int
			if d == p.dir && p.used < k {
				dist, used = p.dist, p.used+1
			} else {
				dist, used = p.dist+1, 1
			}
			s := &state{x, y, d, dist, used}
			if !s.less(bests[x][y][d]) {
				continue
			}
			bests[x][y][d] = s
			heap.Push(&q, s)
		}
	}

	min := inf
	for _, s := range bests[x2][y2] {
		if s.dist < min {
			min = s.dist
		}
	}
	if min == inf {
		return -1
	}
	return min
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
