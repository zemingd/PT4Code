package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

type tree []int

func (uft *tree) init(n int) {
	*uft = make([]int, n)
	for i := 0; i < n; i++ {
		(*uft)[i] = i
	}
}
func (uft *tree) find(x int) int {
	if x == (*uft)[x] {
		return x
	}
	(*uft)[x] = uft.find((*uft)[x]) // 経路圧縮あり
	return (*uft)[x]
}
func (uft *tree) same(x, y int) bool {
	return uft.find(x) == uft.find(y)
}
func (uft *tree) unite(x, y int) {
	x = uft.find(x)
	y = uft.find(y)
	if x == y {
		return
	}
	(*uft)[x] = y
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	N := nextInt(sc)
	K := nextInt(sc)
	L := nextInt(sc)
	var roadconn, railconn tree
	roadconn.init(N)
	railconn.init(N)
	for i := 0; i < K; i++ {
		p, q := nextInt(sc), nextInt(sc)
		p--
		q--
		roadconn.unite(p, q)
	}
	for i := 0; i < L; i++ {
		r, s := nextInt(sc), nextInt(sc)
		r--
		s--
		railconn.unite(r, s)
	}
	/*
		fmt.Println("N", N, "K", K, "L", L)
		fmt.Println("roadconn:")
		fmt.Println(roadconn)
		fmt.Println("railconn:")
		fmt.Println(railconn)
	*/
	ans := make(map[int]map[int]int)
	for i := 0; i < N; i++ { // 全ての都市について調べる
		x := roadconn.find(i) // 都市iの道路グループラベル(UnionFind木の根)
		y := railconn.find(i) // 都市iの鉄道グループラベル(UnionFind木の根)
		if ans[x] == nil {
			ans[x] = make(map[int]int)
		}
		ans[x][y]++ // 道路グループxと鉄道グループyを使ってたどり着ける都市のペアの数
	}
	wtr := bufio.NewWriter(os.Stdout)
	// fmt.Fprintln(wtr, ans)
	for i := 0; i < N; i++ {
		x := roadconn.find(i)
		y := railconn.find(i)
		fmt.Fprintf(wtr, "%d ", ans[x][y])
	}
	fmt.Fprintln(wtr)
	wtr.Flush()
}
func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}
