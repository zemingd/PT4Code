package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

type UnionFind struct {
	Parents []int
	Sizes   []int
}

func NewUnionFind(n int) (uf UnionFind) {
	initParents := make([]int, n)
	initSizes := make([]int, n)
	for i := 0; i < n; i++ {
		initParents[i] = i
		initSizes[i] = 1
	}
	uf.Parents = initParents
	uf.Sizes = initSizes
	return
}

func (uf UnionFind) Root(x int) int {
	if uf.Parents[x] == x {
		return x
	}
	uf.Parents[x] = uf.Root(uf.Parents[x])
	return uf.Parents[x]
}

func (uf UnionFind) Unite(x, y int) bool {
	rootX := uf.Root(x)
	rootY := uf.Root(y)
	if rootX == rootY {
		return false
	}
	uf.Parents[rootX] = rootY
	uf.Sizes[rootY] = uf.Sizes[rootY] + uf.Sizes[rootX]
	return true
}

func (uf UnionFind) MaxSize() (result int) {
	for _, val := range uf.Sizes {
		if result < val {
			result = val
		}
	}
	return
}

func friends(N int, As [][2]int) int {
	uf := NewUnionFind(N)
	for _, val := range As {
		uf.Unite(val[0]-1, val[1]-1)
	}
	ans := uf.MaxSize()
	return ans
}

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	nm := strings.Split(stdin.Text(), " ")
	N, _ := strconv.Atoi(nm[0])
	M, _ := strconv.Atoi(nm[1])
	var As [][2]int
	for i := 0; i < M; i++ {
		stdin.Scan()
		pair := strings.Split(stdin.Text(), " ")
		var element [2]int
		element[0], _ = strconv.Atoi(pair[0])
		element[1], _ = strconv.Atoi(pair[1])
		As = append(As, element)
	}
	result := friends(N, As)
	fmt.Println(result)
}
