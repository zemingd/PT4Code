package main

import (
	"fmt"
)

type unionfind []int

func unionfindInit(n int) unionfind {
	tmp := make([]int, n)
	for i := range tmp {
		tmp[i] = -1
	}
	return tmp
}

func (u unionfind) root(i int) int {
	if u[i] < 0 {
		return i
	}
	u[i] = u.root(u[i])
	return u[i]
}

func (u unionfind) size(i int) int {
	return u[u.root(i)] * -1
}

func (u unionfind) unite(i, j int) {
	if u.root(i) == u.root(j) {
		return
	}
	if u.size(i) < u.size(j) {
		i, j = j, i
	}
	u[u.root(i)] -= u.size(j)
	u[u.root(j)] = u.root(i)
	return
}

func main() {
	var n, m int
	fmt.Scanf("%d %d\n", &n, &m)
	friends := make([][]int, m)

	for i := range friends {
		friends[i] = make([]int, 2)
		fmt.Scanf("%d %d\n", &friends[i][0], &friends[i][1])
	}

	u := unionfindInit(n)
	for i := range friends {
		u.unite(friends[i][0]-1, friends[i][1]-1)
	}

	max := 0
	for i := range u {
		if max < u.size(i) {
			max = u.size(i)
		}
	}

	fmt.Println(max)
}
