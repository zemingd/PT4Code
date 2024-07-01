package main

import (
	"fmt"
	"sort"
)

type factor struct {
	num int
	count int
}

type Factors []factor

func (f Factors) Len() int {
	return len(f)
}

func (f Factors) Less(i, j int) bool {
	return f[i].num < f[j].num
}

func (f Factors) Swap(i, j int) {
	f[i], f[j] = f[j], f[i]
}

func main() {
	var N, K int
	fmt.Scanf("%d %d", &N, &K)

	var a, b int
	factors := make([]factor, 0)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d %d", &a, &b)
		f := factor{a, b}
		factors = append(factors, f)
	}

	sort.Sort(Factors(factors))

	cur := 0
	for _, v := range factors {
		cur += v.count
		if cur >= K {
			fmt.Println(v.num)
			return
		}
	}
}
