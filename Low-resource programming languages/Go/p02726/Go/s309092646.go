package main

import (
	"bufio"
	"container/list"
	"fmt"
	"os"
	"strconv"
)

var graph map[int]map[int]bool

func initGraph(x int) {
	graph = make(map[int]map[int]bool, x)
}

func add(from, to int) {
	if _, ok := graph[from]; !ok {
		graph[from] = make(map[int]bool)
	}
	graph[from][to] = true
}

func main() {
	var n, x, y int
	fmt.Scan(&n, &x, &y)

	initGraph(n)
	add(x, y)
	add(y, x)
	for i := 1; i < n; i++ {
		add(i, i+1)
		add(i+1, i)
	}

	ans := make([]int, n+1)
	for i := 1; i <= n; i++ {
		seen := make([]int, n+1)
		seen[i] = 1
		ls := list.New()
		ls.PushBack(i)
		for ls.Len() > 0 {
			v := ls.Remove(ls.Front()).(int)
			for t := range graph[v] {
				if seen[t] > 0 {
					continue
				}
				seen[t] = seen[v] + 1
				ans[seen[t]-1]++
				ls.PushBack(t)
			}
		}
	}

	var wr = bufio.NewWriter(os.Stdout)
	for i := 1; i < n; i++ {
		wr.WriteString(strconv.Itoa(ans[i]/2) + "\n")
	}
	wr.Flush()
}
