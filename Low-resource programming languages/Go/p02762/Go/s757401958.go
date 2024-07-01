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

func readString() string {
	sc.Scan()
	return sc.Text()
}

func readInt64() int64 {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return int64(i)
}

func readfloat64() float64 {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return float64(i)
}

func abs(a int) int {
	if a < 0 {
		return a * -1
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

func main() {
	sc.Split(bufio.ScanWords)
	n, m, k := readInt(), readInt(), readInt()

	friend := make([][]int, n)
	block := make([][]int, n)
	for i := 0; i < n; i++ {
		friend[i] = make([]int, 0)
		block[i] = make([]int, n)
	}

	for i := 0; i < m; i++ {
		a, b := readInt(), readInt()
		a--
		b--
		friend[a] = append(friend[a], b)
		friend[b] = append(friend[b], a)
	}
	for i := 0; i < k; i++ {
		c, d := readInt(), readInt()
		c--
		d--
		block[c][d] = 1
		block[d][c] = 1
	}

	for i := 0; i < n; i++ {
		queue := make([]int, 1)
		queue[0] = i

		dist := make([]int, n)
		for j := 0; j < n; j++ {
			dist[j] = -1
		}
		dist[i] = 0
		count := 0
		for len(queue) > 0 {
			v := queue[0]
			queue = queue[1:]

			for _, nextv := range friend[v] {
				if dist[nextv] != -1 {
					continue
				}
				queue = append(queue, nextv)
				dist[nextv] = dist[v] + 1
				if dist[nextv] > 1 && block[i][nextv] != 1 {
					count++
				}
			}
		}
		fmt.Printf("%d ", count)
	}
}

func isBlock(v, nextv int, block [][]int) bool {
	n := len(block[v])
	for j := 0; j < n; j++ {
		if block[v][j] == nextv {
			return true
		}
	}
	return false
}
