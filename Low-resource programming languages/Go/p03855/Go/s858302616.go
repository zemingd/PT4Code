package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
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
		road[i] = road.root(i)
		rail[i] = rail.root(i)
		group[[2]int{road[i], rail[i]}]++
	}
	ret := make([]string, n)
	for i := 0; i < n; i++ {
		ret[i] = strconv.Itoa(group[[2]int{road[i], rail[i]}])
	}
	fmt.Println(strings.Join(ret, " "))
}

type union []int

func NewUnion(n int) union {
	u := union{parent: make([]int, n)}
	for i := 0; i < n; i++ {
		u.parent[i] = i
	}
	return u
}

func (u union) root(x int) int {
	if u[x] == x {
		return x
	}
	u[x] = u.root(u[x])
	return u[x]
}

func (u union) unite(x, y int) {
	r1 := u.root(x)
	r2 := u.root(y)
	if r1 == r2 {
		return
	}
	u[r2] = r1
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
