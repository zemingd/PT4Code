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
	if kvs[i].V > kvs[j].V {
		return true
	} else if kvs[i].V < kvs[j].V {
		return false
	} else {
		return kvs[i].K < kvs[j].K
	}
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
	maxN := x[0].K
	nexN := x[1].K

	// /\
	ans1 := 0
	tmpA := append([]int{}, A...)
	for i := 0; i < N; i++ {
		if i%2 == 0 && A[i] != nexN {
			A[i] = nexN
			ans1++
		} else if i%2 == 1 && A[i] != maxN {
			A[i] = maxN
			ans1++
		}
	}
	// \/
	ans2 := 0
	for i := 0; i < N; i++ {
		if i%2 == 0 && tmpA[i] != maxN {
			tmpA[i] = maxN
			ans2++
		} else if i%2 == 1 && tmpA[i] != nexN {
			tmpA[i] = nexN
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

// 8
// 2 5 2 9 1 5 3 5
