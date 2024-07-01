package main

import (
	"fmt"
	"sort"
)

type mymap map[int]int

type mapkey []int

func (m mymap) get(n int, def int) int {
	_, ok := m[n]
	if ok {
		return m[n]
	}
	return def
}

func (m mymap) keys() mapkey {
	k := make(mapkey, 0, len(m))
	for i := range m {
		k = append(k, i)
	}
	sort.Sort(k)
	return k
}

func (k mapkey) Len() int {
	return len(k)
}

func (k mapkey) Swap(i, j int) {
	k[i], k[j] = k[j], k[i]
}

func (k mapkey) Less(i, j int) bool {
	return k[i] > k[j]
}

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	//
	cards := make(mymap)
	for i := 0; i < n; i++ {
		var ai int
		fmt.Scan(&ai)
		cards[ai] = cards.get(ai, 0) + 1
	}
	//
	for i := 0; i < m; i++ {
		var bi, ci int
		fmt.Scan(&bi, &ci)
		cards[ci] = cards.get(ci, 0) + bi
	}
	//
	klist := cards.keys()
	var s int64 = int64(0)
	rest := n
	for _, k := range klist {
		nn := cards[k]
		if rest > nn {
			s += int64(k * nn)
			rest -= nn
		} else {
			s += int64(k * rest)
			break
		}
	}
	fmt.Println(s)
}
