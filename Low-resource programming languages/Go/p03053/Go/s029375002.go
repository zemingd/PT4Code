package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func scanText() string {
	sc.Scan()
	return sc.Text()
}

type point struct {
	y, x, d int
}

func main() {
	sc.Split(bufio.ScanWords)
	dy := [4]int{-1, 0, 1, 0}
	dx := [4]int{0, -1, 0, 1}

	h, w := scanInt(), scanInt()
	board := make([]string, h)
	for i := 0; i < h; i++ {
		board[i] = scanText()
	}

	queue := make([]point, 0)
	dd := make([][]int, h)
	for i := 0; i < h; i++ {
		dd[i] = make([]int, w)
		for j := 0; j < w; j++ {
			if board[i][j] == '#' {
				queue = append(queue, point{y: i, x: j, d: 0})
			}
		}
	}

	max := 0
	for len(queue) > 0 {
		now := queue[0]
		queue = queue[1:]

		max = now.d

		for i := 0; i < 4; i++ {
			nextY, nextX := now.y+dy[i], now.x+dx[i]

			if nextY < 0 || nextY >= h || nextX < 0 || nextX >= w || dd[nextY][nextX] != 0 || board[nextY][nextX] == '#' {
				continue
			}

			dd[nextY][nextX] = now.d + 1
			queue = append(queue, point{y: nextY, x: nextX, d: now.d + 1})
		}
	}

	fmt.Println(max)
}
