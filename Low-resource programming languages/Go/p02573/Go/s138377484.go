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

func nextFloat64() float64 {
	sc.Scan()
	i, e := strconv.ParseFloat(sc.Text(), 64)
	if e != nil {
		panic(e)
	}
	return i
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func contain(i int, as []int) bool {
	for _, a := range as {
		if a == i {
			return true
		}
	}
	return false
}

type UnionFind struct {
	Par map[int]int
}

func NewUnionFind(n int) *UnionFind {
	par := make(map[int]int)
	for i := 0; i < n; i++ {
		par[i] = -1
	}
	return &UnionFind{
		Par: par,
	}
}

func (u *UnionFind) Root(x int) int {
	c := u.Par[x]
	if c < 0 {
		return x
	}
	u.Par[x] = u.Root(u.Par[x])
	return u.Par[x]
}

func (u *UnionFind) Unite(x, y int) bool {
	x = u.Root(x) //xの根をrx
	y = u.Root(y) //yの根をry
	if x == y {
		return false
	} //xとyの根が同じ(=同じ木にある)時はそのまま
	if u.Par[x] > u.Par[y] {
		tmp := x
		x = y
		y = tmp
	}
	u.Par[x] += u.Par[y]
	u.Par[y] = x
	return true
}

func (u *UnionFind) Same(x, y int) bool { // 2つのデータx, yが属する木が同じならtrueを返す
	rx := u.Root(x)
	ry := u.Root(y)
	return rx == ry
}

func (u *UnionFind) Size(x int) int {
	n := u.Root(x)
	return -u.Par[n]
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func main() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(nil, 100000000)

	n, m := nextInt(), nextInt()

	uf := NewUnionFind(n)

	for i := 0; i < m; i++ {
		k, v := nextInt()-1, nextInt()-1
		uf.Unite(k, v)
	}

	ans := 0
	for i := 0; i < m; i++ {
		ans = max(ans, uf.Size(i))
	}
	fmt.Println(ans)
}
