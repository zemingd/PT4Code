package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func readInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

var graph [][]int
var dist [][]int

func main() {
	sc.Split(bufio.ScanWords)
	n, x, y := readInt(), readInt(), readInt()
	x--
	y--

	graph = make([][]int, n)
	for i := 0; i < n; i++ {
		graph[i] = make([]int, n)
		for j := 0; j < n; j++ {
			if abs(i-j) == 1 {
				graph[i][j] = 1
			}
		}
	}
	graph[x][y] = 1
	graph[y][x] = 1

	counter := make(map[int]int, 0)

	for sv := 0; sv < n; sv++ {
		queue := make([]int, 1)
		queue[0] = sv

		dist := make([]int, n)
		for i := 0; i < n; i++ {
			dist[i] = -1
		}
		dist[sv] = 0

		for len(queue) > 0 {
			v := queue[0]
			queue = queue[1:]

			for nextv := range graph[v] {
				if graph[v][nextv] == 1 && dist[nextv] == -1 {
					queue = append(queue, nextv)
					dist[nextv] = dist[v] + 1
				}
			}
		}
		for _, d := range dist {
			counter[d]++
		}
	}
	for i := 1; i < n; i++ {
		fmt.Println(counter[i] / 2)
	}
}

func abs(a int) int {
	if a < 0 {
		return a * -1
	}
	return a
}
