package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc, wr = bufio.NewScanner(os.Stdin), bufio.NewWriter(os.Stdout)

func scanString() string   { sc.Scan(); return sc.Text() }
func scanRunes() []rune    { return []rune(scanString()) }
func scanInt() int         { a, _ := strconv.Atoi(scanString()); return a }
func scanInt64() int64     { a, _ := strconv.ParseInt(scanString(), 10, 64); return a }
func scanFloat64() float64 { a, _ := strconv.ParseFloat(scanString(), 64); return a }

func scanInts(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ {
		res[i] = scanInt()
	}
	return res
}

func debug(a ...interface{}) { fmt.Fprintln(os.Stderr, a...) }

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

//•*¨*•.¸¸♪main•*¨*•.¸¸♪(　-ω-)ノ　(　・ω・)
func main() {
	defer wr.Flush()
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 10000), 1001001)

	h, w, k := scanInt(), scanInt(), scanInt()
	x1, y1, x2, y2 := scanInt()-1, scanInt()-1, scanInt()-1, scanInt()-1
	c := make([]string, h)
	ans := make([][]int, h)
	for i := 0; i < h; i++ {
		c[i] = scanString()
		ans[i] = make([]int, w)
		for j := 0; j < w; j++ {
			ans[i][j] = -1
		}
	}

	q := []p{p{x1, y1, 0}}
	ans[x1][y1] = 0
	dx, dy := []int{-1, 0, 1, 0}, []int{0, -1, 0, 1}
	for len(q) != 0 {
		ne := q[0]
		q = q[1:]

		for i := 0; i < 4; i++ {
			nx, ny := ne.x, ne.y
			for j := 0; j < k; j++ {
				nx += dx[i]
				ny += dy[i]
				if nx < 0 || ny < 0 || nx >= h || ny >= w || c[nx][ny] == '@' || ans[nx][ny] != -1 && ans[nx][ny] != ne.c+1 {
					break
				}

				if ans[nx][ny] == -1 {
					ans[nx][ny] = ne.c + 1
					q = append(q, p{nx, ny, ne.c + 1})
				}
			}
		}
	}

	fmt.Fprintln(wr, ans[x2][y2])

}

type p struct {
	x, y, c int
}
