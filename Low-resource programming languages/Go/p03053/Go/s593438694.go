package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner((os.Stdin))

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	l := nextLine()
	i, e := strconv.Atoi(l)
	if e != nil {
		panic(e)
	}
	return i
}

// Point ...
type Point struct {
	x int
	y int
}

func main() {
	sc.Split(bufio.ScanWords)
	H, W, A := nextInt(), nextInt(), []string{}
	for i := 0; i < H; i++ {
		A = append(A, nextLine())
	}

	fmt.Printf("%d\n", AGC033A(H, W, A))
}

// AGC033A ...
func AGC033A(H, W int, A []string) (res int) {
	board, blackcnt := make([][]byte, H), 0
	for i := 0; i < H; i++ {
		board[i] = make([]byte, W)
		for j, char := range A[i] {
			board[i][j] = byte(char)
			if char == '#' {
				blackcnt++
			}
		}
	}

	for blackcnt != H*W {
		visited := make([][]bool, H)
		for i := 0; i < H; i++ {
			visited[i] = make([]bool, W)
		}

		for i := 0; i < H; i++ {
			for j := 0; j < W; j++ {
				if board[j][i] == '#' && !visited[j][i] {
					changed := 0
					changed, board, visited = dfsAGC033A(i, j, H, W, changed, false, board, visited)
					blackcnt += changed
				}
			}
		}

		res++
	}

	return
}

func dfsAGC033A(x, y, H, W, changed int, lastblack bool, board [][]byte, visited [][]bool) (int, [][]byte, [][]bool) {
	if x < 0 || y < 0 || W <= x || H <= y {
		return changed, board, visited
	}
	if visited[y][x] {
		return changed, board, visited
	}

	visited[y][x] = true

	if board[y][x] == '.' {
		if lastblack {
			board[y][x] = '#'
			changed++
		}
		return changed, board, visited
	}

	moves := []Point{{1, 0}, {0, 1}, {-1, 0}, {0, -1}}
	for _, mv := range moves {
		next := Point{x + mv.x, y + mv.y}

		lastblack = board[y][x] == '#'
		changed, board, visited = dfsAGC033A(next.x, next.y, H, W, changed, lastblack, board, visited)
	}

	return changed, board, visited
}
