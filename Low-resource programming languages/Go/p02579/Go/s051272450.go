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

func main() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, initialBufSize), maxBufSize)
	defer wt.Flush()

	const inf = 1 << 50

	h, w := nextInt(), nextInt()
	ch, cw := nextInt()-1, nextInt()-1
	dh, dw := nextInt()-1, nextInt()-1
	s := make([]string, h)
	for i := range s {
		s[i] = next()
	}

	cost := make([][]int, h)
	for i := range cost {
		cost[i] = make([]int, w)
		for j := range cost[i] {
			cost[i][j] = inf
		}
	}
	cost[ch][cw] = 0

	di := []int{0, 1, 0, -1}
	dj := []int{1, 0, -1, 0}
	que := make([][2]int, 0)
	que = append(que, [2]int{ch, cw})
	for len(que) > 0 {
		i, j := que[0][0], que[0][1]
		que = que[1:]
		// 上下左右を探索
		for k := 0; k < 4; k++ {
			nextI, nextJ := i+di[k], j+dj[k]
			if nextI < 0 || h <= nextI || nextJ < 0 || w <= nextJ {
				continue
			}
			if s[nextI][nextJ] == '#' {
				continue
			}
			if cost[i][j] < cost[nextI][nextJ] {
				cost[nextI][nextJ] = cost[i][j]
				que = append(que, [2]int{nextI, nextJ})
			}
		}
		// 5x5を探索
		for dI := -2; dI <= 2; dI++ {
			for dJ := -2; dJ <= 2; dJ++ {
				nextI, nextJ := i+dI, j+dJ
				if nextI < 0 || h <= nextI || nextJ < 0 || w <= nextJ {
					continue
				}
				if s[nextI][nextJ] == '#' {
					continue
				}
				if cost[i][j]+1 < cost[nextI][nextJ] {
					cost[nextI][nextJ] = cost[i][j] + 1
					que = append(que, [2]int{nextI, nextJ})
				}
			}
		}
	}

	if cost[dh][dw] == inf {
		puts(-1)
	} else {
		puts(cost[dh][dw])
	}
}
