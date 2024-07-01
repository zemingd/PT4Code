package main

import (
	"bufio"
	"os"
	"strconv"
)

const scBufSize = 1 * 1024 * 1024 // 1MB
var sc = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Buffer(make([]byte, scBufSize), scBufSize)
	sc.Split(bufio.ScanWords)
	return sc
}()

func main() {
	n := scani()
	k := scani()
	l := scani()

	road := NewUnion(n)
	rail := NewUnion(n)
	for i := 0; i < k+l; i++ {
		o, d := scanRoad()
		if i < k {
			road.unite(o, d)
		} else {
			rail.unite(o, d)
		}
	}
	group := map[[2]int]int{}
	for i := 0; i < n; i++ {
		road.parent[i] = road.root(i)
		rail.parent[i] = rail.root(i)
		group[[2]int{road.parent[i], rail.parent[i]}]++
	}
	for i := 0; i < n; i++ {
		print(group[[2]int{road.parent[i], rail.parent[i]}])
	}
}

type union struct {
	parent []int
	// rank   []int
}

func NewUnion(n int) *union {
	u := &union{parent: make([]int, n)}
	for i := 0; i < n; i++ {
		u.parent[i] = i
		// u.rank[i] = 0
	}
	return u
}

func (u *union) root(x int) int {
	if u.parent[x] == x {
		return x
	}
	return u.root(u.parent[x])
}

func (u *union) same(x, y int) bool {
	return u.root(x) == u.root(y)
}

func (u *union) unite(x, y int) {
	r1 := u.root(x)
	r2 := u.root(y)
	if r1 == r2 {
		return
	}
	u.parent[y] = r1
}

const sp = " "

func print(n int) {
	os.Stdout.WriteString(strconv.Itoa(n))
	os.Stdout.WriteString(sp)
}

func scani() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func scanRoad() (o, d int) {
	o = scani() - 1
	d = scani() - 1
	return
}
