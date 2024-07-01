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
	var k int
	k = 0
	for i= 0; i<N; i++ {
		var c int
		var d uint
		fmt.Scan(&c,&d)
		if ok := b[c];ok>0 {
			d += b[c]
			b[c] = d
		} else {
			a[k] = c
			b[c] = d
			k++
		}
	}
	sort.Ints(a)
	var sum uint
	sum = 0
	for _,value := range a {
		if value == 0 {
			continue
		}
		sum += b[value]
		// fmt.Println(i,value,b[value],a)
		if sum >= K {
			 fmt.Println(value)
			 break
		}
	}
}
