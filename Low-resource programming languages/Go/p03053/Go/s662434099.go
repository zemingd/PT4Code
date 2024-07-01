package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const (
	initialBufSize = 100000
	maxBufSize     = 10000000
	inf            = 1 << 60
)

var (
	sc = bufio.NewScanner(os.Stdin)
	wt = bufio.NewWriter(os.Stdout)
)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	i, _ := strconv.Atoi(next())
	return i
}

func puts(a ...interface{}) {
	fmt.Fprintln(wt, a...)
}

func max(nums ...int) int {
	ret := nums[0]
	for _, v := range nums {
		if v > ret {
			ret = v
		}
	}
	return ret
}

func main() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, initialBufSize), maxBufSize)
	defer wt.Flush()

	h, w := nextInt(), nextInt()
	a := make([]string, h)
	black := make([][2]int, 0)
	for i := range a {
		a[i] = next()
		for j := range a[i] {
			if a[i][j] == '#' {
				black = append(black, [2]int{i, j})
			}
		}
	}

	cost := make([][]int, h)
	for i := range cost {
		cost[i] = make([]int, w)
		for j := range cost[i] {
			cost[i][j] = inf
		}
	}
	dx := []int{0, 1, 0, -1}
	dy := []int{1, 0, -1, 0}
	for _, yx := range black {
		// bfs
		que := make([][2]int, 0)
		cost[yx[0]][yx[1]] = 0
		que = append(que, yx)
		for len(que) > 0 {
			y, x := que[0][0], que[0][1]
			que = que[1:]
			for i := 0; i < 4; i++ {
				nextX, nextY := x+dx[i], y+dy[i]
				if nextX < 0 || w <= nextX || nextY < 0 || h <= nextY {
					continue
				}
				if a[nextY][nextX] == '.' && cost[nextY][nextX] > cost[y][x]+1 {
					cost[nextY][nextX] = cost[y][x] + 1
					que = append(que, [2]int{nextY, nextX})
				}
			}
		}
	}

	ans := 0
	for i := range cost {
		ans = max(ans, max(cost[i]...))
	}
	puts(ans)
}
