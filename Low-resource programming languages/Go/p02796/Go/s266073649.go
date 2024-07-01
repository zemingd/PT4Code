package main

import (
	"fmt"
	"sort"
)

// ロボットが動く範囲の構造体
// t: max, s: min
type p struct {
	t, s int
}

type Ps []p

func (p Ps) Len() int {
	return len(p)
}

func (p Ps) Less(i, j int) bool {
	return p[i].t < p[j].t
}

func (p Ps) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}

func solution(n int, matrix [][]int) int {
	ps := make(Ps, n)

	for i := 0; i < n; i++ {
		t := matrix[i][0] + matrix[i][1]
		s := matrix[i][0] - matrix[i][1]
		ps[i] = p{s: s, t: t}
	}

	// ロボットを $$T_i$$ が小さい順にソート
	sort.Sort(ps)

	// ロボット$$p_i$$の腕が既に残すと決めたロボットの腕と重ならないならば、ロボット $$p_i$$ を残すと決める。そうでないなら残さないと決める。
	var ans int
	var cur int = -1 << 31
	for i := 0; i < n; i++ {
		if cur <= ps[i].s {
			ans++
			cur = ps[i].t
		}
	}
	return ans
}

func main() {
	var n, x, l int
	fmt.Scan(&n)
	matrix := make([][]int, n)
	for i := range matrix {
		matrix[i] = make([]int, 2)
	}
	for i := 0; i < n; i++ {
		fmt.Scan(&x, &l)
		matrix[i][0] = x
		matrix[i][1] = l
	}
	fmt.Println(solution(n, matrix))
}
