package main

import (
	"fmt"
	"sort"
)

type K struct {
	V int
	N int
}

type ByV []K

func (ks ByV) Len() int { return len(ks) }
func (ks ByV) Swap(i, j int) { ks[i], ks[j] = ks[j], ks[i] }
func (ks ByV) Less(i, j int) bool { return ks[i].V < ks[j].V }

func main() {
	var n, k int // 64bitになるかしらん。
	fmt.Scan(&n, &k)
	var ks = make([]K, n, n)

	for i := 0; i < n; i++ {
		fmt.Scan(&ks[i].V, &ks[i].N)
	}
	sort.Sort(ByV(ks))
	for i := 0; i < n; i++ {
		if k <= ks[i].N {
			fmt.Println(ks[i].V)
			break
		} else {
			k -= ks[i].N
		}
	}
}
