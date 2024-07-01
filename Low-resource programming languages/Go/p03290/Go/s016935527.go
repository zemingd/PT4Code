package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var d, g int
	fmt.Scan(&d, &g)
	g /= 100

	num := 0
	ps := make([]int, d)
	cs := make([]int, d)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := 0; i < d; i++ {
		sc.Scan()
		ps[i], _ = strconv.Atoi(sc.Text())
		num += ps[i]
		sc.Scan()
		c, _ := strconv.Atoi(sc.Text())
		cs[i] = c / 100
	}
	fmt.Printf("%d\n", searchMin(g, 0, num, ps, cs))
	return
}

func searchMin(g, min, max int, ps, cs []int) int {
	if min == max {
		return min
	}
	num := (min + max) / 2
	if bfs(g, num, 0, ps, cs) {
		return searchMin(g, min, num, ps, cs)
	}
	return searchMin(g, num+1, max, ps, cs)
}

func bfs(g, rest, idx int, ps, cs []int) bool {
	if rest == 0 || idx == len(ps) {
		return g <= 0
	}
	if idx == len(ps)-1 {
		if rest > ps[idx] {
			return false
		}
		return bfs(g-score(idx, rest, ps, cs), 0, idx+1, ps, cs)
	}
	for i := 0; i <= ps[idx] && i <= rest; i++ {
		if bfs(g-score(idx, i, ps, cs), rest-i, idx+1, ps, cs) {
			return true
		}
	}
	return false
}

func score(idx, num int, ps, cs []int) int {
	bonus := 0
	if num == ps[idx] {
		bonus = cs[idx]
	}
	return num*(idx+1) + bonus
}
