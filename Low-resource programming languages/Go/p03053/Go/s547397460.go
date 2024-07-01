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
	queue := []Point{}
	board, dist, visited := make([][]byte, H), make([][]int, H), make([][]bool, H)
	for i := 0; i < H; i++ {
		board[i], dist[i], visited[i] = make([]byte, W), make([]int, W), make([]bool, W)
		for j, char := range A[i] {
			board[i][j] = byte(char)
			dist[i][j] = 1000000
			if char == '#' {
				dist[i][j] = 0
				queue = append(queue, Point{j, i})
			}
		}
	}

	moves := []Point{{1, 0}, {0, 1}, {-1, 0}, {0, -1}}
	for len(queue) != 0 {
		current := queue[0]
		queue = queue[1:]

		if visited[current.y][current.x] {
			continue
		}
		visited[current.y][current.x] = true

		for _, mv := range moves {
			next := Point{current.x + mv.x, current.y + mv.y}
			if next.x < 0 || next.y < 0 || W <= next.x || H <= next.y {
				continue
			}

			ct := dist[current.y][current.x] + 1
			if ct < dist[next.y][next.x] {
				dist[next.y][next.x] = ct
				queue = append(queue, next)
				if res < ct {
					res = ct
				}
			}
		}
	}

	return
}
