package main

import (
	"fmt"
	"sort"
)

func main(){
	var k,n int
	fmt.Scan(&n,&k)
	a := make([]int,n)
	p := n*(n-1)/2
	pro := make([]int,p)
	for i := 0 ; i < n ; i++ {
		fmt.Scan(&a[i])
	}
	//fmt.Println(a)
	c := 0
	for i := 0 ; i < n-1; i++ {
		for j := i+1 ; j < n ; j++ {
			pro[c] = a[i] * a[j]
			c++
		}
	}
	sort.Ints(pro)
	fmt.Println(pro[k-1])
}
