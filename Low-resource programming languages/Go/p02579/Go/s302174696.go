package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := NewScanner()
	H, W := sc.NextInt(), sc.NextInt()
	Ch, Cw := sc.NextInt()-1, sc.NextInt()-1
	Dh, Dw := sc.NextInt()-1, sc.NextInt()-1
	S := make([]string, H)
	groups := make([][]int, H)
	checked := make([][]bool, H)

	for i := 0; i < H; i++ {
		S[i] = sc.Next()
		groups[i] = make([]int, W)
		checked[i] = make([]bool, W)

	}

	check := func(y, x int) bool {
		return 0 <= y && y < H && 0 <= x && x < W
	}

	group := 1
	var dfs func(x, y int)
	dfs = func(y, x int) {
		groups[y][x] = group

		for i := x - 1; i <= x+1; i++ {
			for j := y - 1; j <= y+1; j++ {
				if !check(j, i) {
					continue
				}

				if abs(x-i)+abs(y-j) != 1 {
					continue
				}
				if S[j][i] == '#' {
					continue
				}

				if groups[j][i] != 0 {
					continue
				}
				dfs(j, i)
			}
		}
	}

	groups[0][0] = 1
	for i := 0; i < W; i++ {
		for j := 0; j < H; j++ {
			if S[j][i] == '#' {
				continue
			}
			if groups[j][i] != 0 {
				continue
			}
			dfs(j, i)
			group++
		}
	}

	edge := make([]map[int]bool, group+1)
	for i := 0; i < group+1; i++ {
		edge[i] = map[int]bool{}
	}

	var dfs2 func(y, x int)
	dfs2 = func(y, x int) {
		for i := x - 2; i <= x+2; i++ {
			for j := y - 2; j <= y+2; j++ {
				if !check(j, i) {
					continue
				}

				if groups[j][i] == 0 {
					continue
				}
				if x-i == 0 && y-j == 0 {
					continue
				}
				if checked[j][i] {
					continue
				}
				checked[j][i] = true
				if groups[j][i] != groups[y][x] {
					edge[groups[y][x]][groups[j][i]] = true
					edge[groups[j][i]][groups[y][x]] = true
				}
			}
		}
	}

	for i := 0; i < H; i++ {
		for j := 0; j < W; j++ {
			if S[i][j] == '#' {
				continue
			}
			dfs2(i, j)
		}
	}
	start := groups[Ch][Cw]
	if start == groups[Dh][Dw] {
		fmt.Println(0)
		return
	}

	queue := make([]int, 1)
	queue[0] = start
	left := 0
	checkedP := make([]bool, group)
	checkedP[start] = true
	turn := 1
	for left < len(queue) {
		nextQueue := make([]int, 0)

		for left < len(queue) {

			for nxt, _ := range edge[queue[left]] {
				if checkedP[nxt] {
					continue
				}
				if nxt == groups[Dh][Dw] {
					fmt.Println(turn)
					return
				}
				checkedP[nxt] = true
				nextQueue = append(nextQueue, nxt)
			}
			left++
		}
		queue = append(queue, nextQueue...)
		turn++
	}
	fmt.Println(-1)
}
func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

type Scanner struct {
	r   *bufio.Reader
	buf []byte
	p   int
}

func NewScanner() *Scanner {
	rdr := bufio.NewReaderSize(os.Stdin, 1000)
	return &Scanner{r: rdr}
}
func (s *Scanner) Next() string {
	s.pre()
	start := s.p
	for ; s.p < len(s.buf); s.p++ {
		if s.buf[s.p] == ' ' {
			break
		}
	}
	result := string(s.buf[start:s.p])
	s.p++
	return result
}
func (s *Scanner) NextLine() string {
	s.pre()
	start := s.p
	s.p = len(s.buf)
	return string(s.buf[start:])
}
func (s *Scanner) NextInt() int {
	v, _ := strconv.Atoi(s.Next())
	return v
}
func (s *Scanner) NextInt64() int64 {
	v, _ := strconv.ParseInt(s.Next(), 10, 64)
	return v
}

func (s *Scanner) NextFloat() float64 {
	v, _ := strconv.ParseFloat(s.Next(), 64)
	return v
}

func (s *Scanner) NextIntArray() []int {
	s.pre()
	start := s.p
	result := []int{}
	for ; s.p < len(s.buf)+1; s.p++ {
		if s.p == len(s.buf) || s.buf[s.p] == ' ' {
			v, _ := strconv.ParseInt(string(s.buf[start:s.p]), 10, 0)
			result = append(result, int(v))
			start = s.p + 1
		}
	}

	return result
}
func (s *Scanner) NextInt64Array() []int64 {
	s.pre()
	start := s.p
	result := []int64{}
	for ; s.p < len(s.buf)+1; s.p++ {
		if s.p == len(s.buf) || s.buf[s.p] == ' ' {
			v, _ := strconv.ParseInt(string(s.buf[start:s.p]), 10, 64)
			result = append(result, v)
			start = s.p + 1
		}
	}
	return result
}

func (s *Scanner) NextMap() map[int]bool {
	s.pre()
	start := s.p
	mp := map[int]bool{}
	for ; s.p < len(s.buf); s.p++ {
		if s.buf[s.p] == ' ' {
			v, _ := strconv.Atoi(string(s.buf[start:s.p]))
			mp[v] = true
			start = s.p + 1
		}
	}
	v, _ := strconv.Atoi(string(s.buf[start:s.p]))
	mp[v] = true

	return mp
}

func (s *Scanner) pre() {
	if s.p >= len(s.buf) {
		s.readLine()
		s.p = 0
	}
}
func (s *Scanner) readLine() {
	s.buf = make([]byte, 0)
	for {
		l, p, e := s.r.ReadLine()
		if e != nil {
			panic(e)
		}
		s.buf = append(s.buf, l...)
		if !p {
			break
		}
	}
}
