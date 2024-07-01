package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func newScanner() *bufio.Scanner {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	return scanner
}

var sc = newScanner()

func scanInt() int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}

func scanInts(n int) []int {
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = scanInt()
	}
	return a
}

func scanString() string {
	if sc.Scan() {
		return sc.Text()
	}
	panic(sc.Err())
}

type Task struct {
	a int
	b int
}

type sortTasks []Task

func (s sortTasks) Less(i, j int) bool {
	if s[i].a == s[j].a {
		return s[i].b > s[j].b
	}
	return s[i].a < s[j].a
}

func (s sortTasks) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}

func (s sortTasks) Len() int {
	return len(s)
}

func main() {
	n, m := scanInt(), scanInt()
	tasks := make([]Task, n)
	for i := 0; i < n; i++ {
		tasks[i] = Task{scanInt(), scanInt()}
	}
	answer := maxRevenue(n, m, tasks)
	fmt.Println(answer)
}

func debug(a ...interface{}) {
	// fmt.Println(a...)
}

func maxRevenue(n, m int, tasks []Task) int {
	sort.Sort(sortTasks(tasks))
	edges := make([]int, m+1)
	for i := 0; i < m+1; i++ {
		edges[i] = -1
	}

	for i, nextEdge := 0, 1; i < n && nextEdge <= m; {
		debug(i, nextEdge, tasks[i])
		if tasks[i].a == nextEdge {
			edges[nextEdge] = i
			nextEdge++
			continue
		} else if tasks[i].a > nextEdge {
			nextEdge++
		} else {
			i++
		}
	}
	revenue := 0
	debug(edges)
	debug(tasks)
	// 5 3 1
	// 4 2
	for i := 1; i <= m; i++ {
		maxForDay := 0
		selected := -1
		debug("search task for day ", i)
		for j := i; j > 0; j-- {
			debug(edges)
			if edges[j] == -1 {
				continue
			}
			t := tasks[edges[j]]
			if t.a <= j && t.b > maxForDay {
				maxForDay = tasks[edges[j]].b
				selected = j
			}
		}
		if selected != -1 {
			debug("selected", selected)
			debug("selected for day ", i, " :", selected, tasks[edges[selected]])
			edges[selected]++
			revenue += maxForDay
		}
	}
	return revenue
}
