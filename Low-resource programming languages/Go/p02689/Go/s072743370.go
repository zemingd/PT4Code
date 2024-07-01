package main

import "fmt"

var N, M int
var H []int
var graph []map[int]int
var done []bool
var highest []bool

func main() {
	fmt.Scan(&N, &M)
	H = make([]int, N)
	done = make([]bool, N)
	highest = make([]bool, N)
	graph = make([]map[int]int, N)

	for i := range graph {
		graph[i] = make(map[int]int)
	}

	for i := range H {
		fmt.Scan(&H[i])
	}
	var a, b int
	for i := 0; i < M; i++ {
		fmt.Scan(&a, &b)
		a--
		b--
		graph[a][b]++
		graph[b][a]++
	}

	cnt := 0
	for i := range graph {
		if search(i) {
			cnt++
		}
	}
	fmt.Println(cnt)
}

func search(i int) bool {
	if done[i] {
		return highest[i]
	}
	h := H[i]
	for j := range graph[i] {
		if H[j] < h {
			done[j] = true
			highest[j] = false
		} else {
			done[i] = true
			highest[i] = false
		}
	}
	if !done[i] {
		done[i] = true
		highest[i] = true
	}
	return highest[i]
}
