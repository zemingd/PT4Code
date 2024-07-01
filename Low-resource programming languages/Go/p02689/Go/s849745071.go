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

func main() {
	sc.Split(bufio.ScanWords)
	n, m := readInt(), readInt()

	h := make([]int, n)
	for i := 0; i < n; i++ {
		h[i] = readInt()
	}

	// graph := make([][]int, n)
	// for i := 0; i < m; i++ {
	// 	a, b := readInt(), readInt()
	// 	a--
	// 	b--
	// 	graph[a] = append(graph[a], b)
	// 	graph[b] = append(graph[b], a)
	// }
	// fmt.Println(graph)

	// for i := 0; i < n; i++ {
	// 	for j := 0; j < m; j++ {
	// 		if h[i] > graph[]
	// 	}
	// }

	graph := make(map[int]int, n)
	for i := 0; i < n; i++ {
		graph[i] = 0
	}

	for i := 0; i < m; i++ {
		a, b := readInt(), readInt()
		a--
		b--
		if graph[a] < h[b] {
			graph[a] = h[b]
		}
		if graph[b] < h[a] {
			graph[b] = h[a]
		}
	}
	ans := 0
	for k, v := range graph {
		if h[k] > v {
			ans++
		}
	}
	fmt.Println(ans)
}
