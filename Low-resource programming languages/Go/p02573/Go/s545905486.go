package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	var ans int
	N, M := nextInt(), nextInt()
	G := make([][]int, N)
	for i := 0; i < M; i++ {
		a, b := nextInt(), nextInt()
		G[a-1] = append(G[a-1], b-1)
		G[b-1] = append(G[b-1], a-1)
	}
	marked := make([]bool, N)
	for g := range G {
		if marked[g] {
			continue
		}
		q := make([]int, 0)
		marked[g] = true
		q = append(q, g)
		sum := 1
		for len(q) != 0 {
			node := q[0]
			q = q[1:]
			for _, newNode := range G[node] {
				if marked[newNode] {
					continue
				}
				marked[newNode] = true
				q = append(q, newNode)
				sum += 1
			}
		}
		if sum > ans {
			ans = sum
		}
	}
	fmt.Println(ans)
}
