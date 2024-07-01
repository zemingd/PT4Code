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

	ans := make(map[int]int, n)
	for i := 1; i <= n; i++ {
		seen := make(map[int]int, n)
		seen[i] = 0
		ls := list.New()
		ls.PushBack(i)
		for ls.Len() > 0 {
			v := ls.Remove(ls.Front()).(int)
			for t := range graph[v] {
				if _, ok := seen[t]; ok {
					continue
				}
				seen[t] = seen[v] + 1
				ans[seen[t]]++
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
