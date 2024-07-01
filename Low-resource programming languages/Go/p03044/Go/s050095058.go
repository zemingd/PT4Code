package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	const maxWord = (1 << 30)
	buf := []byte{}
	sc.Buffer(buf, maxWord)
	sc.Split(bufio.ScanWords)
}

func input() string {
	sc.Scan()
	return sc.Text()
}

var infty = 1 << 50

func dijkstra(n int, m [][]int) []int {
	white := 0
	gray := 1
	black := 2

	d := make([]int, n)
	color := make([]int, n)
	for i := 0; i < n; i++ {
		d[i] = infty
		color[i] = white
	}
	d[0] = 0
	color[0] = gray

	for true {
		minv := infty
		u := -1
		for i := 0; i < n; i++ {
			if minv > d[i] && color[i] != black {
				u = i
				minv = d[i]
			}
		}
		if u == -1 {
			break
		}
		color[u] = black
		for v := 0; v < n; v++ {
			if color[v] != black && m[u][v] != infty {
				if d[v] > d[u]+m[u][v] {
					d[v] = d[u] + m[u][v]
					color[v] = gray
				}
			}
		}
	}

	return d
}

func main() {
	n, _ := strconv.Atoi(input())
	m := make([][]int, n)
	for i := 0; i < n; i++ {
		m[i] = make([]int, n)
		for j := 0; j < n; j++ {
			m[i][j] = infty
		}
	}
	for i := 0; i < n; i++ {
		m[i][i] = 0
	}

	for i := 0; i < n-1; i++ {
		u, _ := strconv.Atoi(input())
		v, _ := strconv.Atoi(input())
		w, _ := strconv.Atoi(input())
		u--
		v--
		m[u][v] = w
		m[v][u] = w
	}

	d := dijkstra(n, m)
	for i := 0; i < n; i++ {
		fmt.Println(d[i] % 2)
	}
}
