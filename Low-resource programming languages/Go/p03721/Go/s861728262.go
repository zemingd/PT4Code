package main

import (
	"fmt"
	"sort"
)

func main() {
	var N,K int
	fmt.Scan(&N,&K)
	a := make([]int,N)
	b := map[int]int{}
	for i:= 0; i<N; i++ {
		var c,d int
		fmt.Scan(&c,&d)
		a[i] = c
		b[c] = d
	}
	sort.Ints(a)
	sum := 0
	for _,value := range a {
		sum += b[value]
		if sum >= K {
			 fmt.Println(value)
			 break
		}
	}
}
