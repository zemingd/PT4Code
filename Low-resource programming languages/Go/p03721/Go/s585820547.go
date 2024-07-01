package main

import (
	"fmt"
	"sort"
)

func main() {
	var N,K uint
	fmt.Scan(&N,&K)
	a := make([]int,N)
	b := map[int]uint{}
	var i uint
	for i= 0; i<N; i++ {
		var c int
		var d uint
		fmt.Scan(&c,&d)
		a[i] = c
		if ok := b[c];ok>0 {
			d += b[c]
		}
		b[c] = d
	}
	sort.Ints(a)
	var sum uint
	sum = 0
	for i,value := range a {
		sum += b[value]
		// fmt.Println(i,value,b[value],sum)
		if sum >= K {
			 fmt.Println(value)
			 break
		}
	}
}
