package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	even, odd := make(map[int]int), make(map[int]int)
	e, o := 0, 0
	for i := 0; i < n; i++ {
		var k int
		fmt.Scan(&k)
		if i % 2 == 0 {
			o++
			odd[k] = odd[k] + 1
		} else {
			e++
			even[k] = even[k] + 1
		}
	}
	pair1, pair2 := make(PairList, 0), make(PairList, 0)
	pair1, pair2 = append(pair1, Pair{0, 0}), append(pair2, Pair{0, 0})
	for k, v := range even {
		pair1 = append(pair1, Pair{k ,v})
	}
	for k, v := range odd {
		pair2 = append(pair2, Pair{k ,v})
	}
	sort.Sort(pair1); sort.Sort(pair2)
	if pair1[0].Key != pair2[0].Key {
		fmt.Println(e - pair1[0].Value + o - pair2[0].Value)
	} else {
		v1, v2 := e - pair1[1].Value + o - pair2[0].Value, e - pair1[0].Value + o - pair2[1].Value
		if v1 > v2 {
			fmt.Println(v2)
		} else {
			fmt.Println(v1)
		}
	}
}

type Pair struct {
	Key int
	Value int
}

type PairList []Pair

func (p PairList) Len() int { return len(p) }
func (p PairList) Less(i, j int) bool { return p[i].Value > p[j].Value }
func (p PairList) Swap(i, j int){ p[i], p[j] = p[j], p[i] }
