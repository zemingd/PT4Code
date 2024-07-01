package main

import (
	"fmt"
	"sort"
)

func main(){
	var k,n,minus int
	fmt.Scan(&n,&k)
	a := make([]int,n)
	p := n*(n-1)/2
	pro := make([]int,p)
	for i := 0 ; i < n ; i++ {
		fmt.Scan(&a[i])
		if a[i] < 0 {
			minus++
		}
	}
	sort.Ints(a)
	//fmt.Println(minus,a)
	c := 0
	s := minus * (n-minus)
	if s > k {
		//fmt.Println("Search minus")
		for i := 0 ; i < minus; i++ {
			for j := minus ; j < n ; j++ {
				pro[c] = a[i] * a[j]
				c++
			}
		}
	} else {
		//fmt.Println("Search plus")
		for i := 0 ; i < minus-1; i++ {
			for j := i+1 ; j < minus; j++ {
				pro[c] = a[i] * a[j]
				c++
			}
		}
		for i := minus ; i < n-1 ; i++ {
			for j := i+1 ; j < n; j++ {
				pro[c] = a[i] * a[j]
				c++
			}
		}
	}
	sort.Ints(pro)
	fmt.Println(pro[k-1])
}
