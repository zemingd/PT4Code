package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	var h, w, k int
	fmt.Scan(&h, &w, &k)
	var y1, x1, y2, x2 int
	fmt.Scan(&y1, &x1, &y2, &x2)
	y1--
	x1--
	y2--
	x2--
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	cs := make([][]byte, h)
	for i := range cs {
		sc.Scan()
		cs[i] = []byte(sc.Text())
	}

	ans := make([][]int, h)
	ch := make([][]int, h)
	for i := range ch {
		ans[i] = make([]int, w)
		ch[i] = make([]int, w)
		for j := range ans {
			ans[i][j] = -1
		}
	}

	qs := make([][]int, 0)
	qs = append(qs, []int{y1, x1, 0})
	ans[y1][x1] = 0
	dxs := []int{-1, 0, 1, 0}
	dys := []int{0, 1, 0, -1}
	for len(qs) > 0 {
		q := qs[0]
		qs = qs[1:]
		y, x, st := q[0], q[1], q[2]
		for i := range dxs {
			dx, dy := dxs[i], dys[i]
			for j := 1; j <= k; j++ {
				nx, ny := x+dx, y+dy
				if nx >= 0 && nx < w && ny >= 0 && ny < h && cs[ny][nx] == '.' {
					dx += dxs[i]
					dy += dys[i]
					if ch[ny][nx] == 1 {
						continue
					}
					ans[ny][nx] = st + 1
					qs = append(qs, []int{ny, nx, st + 1})
					ch[ny][nx] = 1
				} else {
					break
				}
			}
		}
	}

	if ans[y2][x2] == -1 {
		fmt.Println(-1)
	} else {
		fmt.Println(ans[y2][x2])
	}
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

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
