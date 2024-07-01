package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func main() {
	buf := make([]byte, 1024*1024)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)
	defer out.Flush()

	N, M := nextInt(), nextInt()

	adj := make([][]int, N+1)
	for i := 1; i <= N; i++ {
		adj[i] = make([]int, 0)
	}

	for j := 0; j < M; j++ {
		a, b := nextInt(), nextInt()
		adj[a] = append(adj[a], b)
		adj[b] = append(adj[b], a)
	}

	reached := make([]bool, N+1)
	max_group_size := 0

	for i := 1; i <= N; i++ {
		if reached[i] {
			continue
		}
		q := make([]int, 0)
		var x int
		group_size := 0
		q = append(q, i)
		reached[i] = true
		for len(q) > 0 {
			x, q = q[0], q[1:]
			group_size += 1
			for _, y := range adj[x] {
				if reached[y] {
					continue
				}
				reached[y] = true
				q = append(q, y)
			}
		}
		if group_size > max_group_size {
			max_group_size = group_size
		}
	}

	fmt.Println(max_group_size)
}
