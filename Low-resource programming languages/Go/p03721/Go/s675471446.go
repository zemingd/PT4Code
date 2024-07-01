package main

import (
	"fmt"
	"sort"
)

type S struct {
	k, v int
}

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	D := make(map[int]int)
	for i := 0; i < N; i++ {
		var a, b int
		fmt.Scan(&a, &b)
		D[a] += b
	}
	Ss := make([]S, len(D))
	idx := 0
	for k, v := range D {
		Ss[idx] = S{k: k, v: v}
		idx++
	}
	sort.Slice(Ss, func(i, j int) bool { return Ss[i].k < Ss[j].k })
	for i := 1; i < len(Ss); i++ {
		Ss[i].v += Ss[i-1].v
	}
	for _, s := range Ss {
		if K <= s.v {
			fmt.Println(s.k)
			return
		}
	}
	panic("あわわあわわわ、わぁ")
}
