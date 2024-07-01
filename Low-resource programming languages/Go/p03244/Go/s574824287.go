package main

import (
	"fmt"
	"sort"
)

type KV struct {
	K, V int
}
type KVS []KV

func (kvs KVS) Len() int {
	return len(kvs)
}

func (kvs KVS) Swap(i, j int) {
	kvs[i], kvs[j] = kvs[j], kvs[i]
}

func (kvs KVS) Less(i, j int) bool {
	return kvs[i].V < kvs[j].V
}

func main() {
	var N int
	fmt.Scan(&N)
	T := make(map[int]int)
	A := make([]int, N)
	for i := 0; i < N; i++ {
		var V int
		fmt.Scan(&V)
		A[i] = V
		T[V]++
	}
	x := KVS{}
	for k, v := range T {
		x = append(x, KV{K: k, V: v})
	}
	if len(x) == 1 {
		fmt.Println(N / 2)
		return
	}
	sort.Sort(x)
	maxN := x[len(x)-1].K
	nexN := x[len(x)-2].K

	// /\
	ans1 := 0
	for i := 0; i < N; i++ {
		if i%2 == 0 && A[i] != nexN {
			ans1++
		} else if i%2 == 1 && A[i] != maxN {
			ans1++
		}
	}
	// \/
	ans2 := 0
	for i := 0; i < N; i++ {
		if i%2 == 0 && A[i] != maxN {
			ans2++
		} else if i%2 == 1 && A[i] != nexN {
			ans2++
		}
	}
	fmt.Println(min(ans1, ans2))
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
