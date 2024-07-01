package main

import (
	"fmt"
	"sort"
)

type Num struct {
	Key   int
	Value int
}

func main() {
	var n int
	fmt.Scan(&n)
	arr := make([]int, n)
	for i := range arr {
		fmt.Scan(&arr[i])
	}
	even := map[int]int{}
	odd := map[int]int{}
	for i := 0; i < n; i++ {
		if i%2 == 0 {
			even[arr[i]]++
		} else {
			odd[arr[i]]++
		}
	}
	var evens []Num
	for k, v := range even {
		evens = append(evens, Num{k, v})
	}
	sort.Slice(evens, func(i, j int) bool {
		return evens[i].Key > evens[j].Key
	})
	if len(evens) < 2 {
		evens = append(evens, Num{})
	}
	var odds []Num
	for k, v := range odd {
		odds = append(odds, Num{k, v})
	}
	sort.Slice(odds, func(i, j int) bool {
		return odds[i].Key > odds[j].Key
	})
	if len(odds) < 2 {
		odds = append(odds, Num{})
	}
	r := 0
	om := 0
	for i := 0; i < len(odds); i++ {
		if odds[i].Key != evens[0].Key {
			om = odds[i].Value
			break
		}
	}
	em := 0
	for i := 0; i < len(evens); i++ {
		if evens[i].Key != odds[0].Key {
			em = evens[i].Value
			break
		}
	}
	l := n / 2
	if evens[0].Value+om >= odds[0].Value+em {
		r = (l - evens[0].Value) + (l - om)
	} else {
		r = (l - odds[0].Value) + (l - em)
	}
	fmt.Println(r)
}