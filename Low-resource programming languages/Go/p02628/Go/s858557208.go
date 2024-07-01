package main

import (
	"fmt"
	"sort"
)

func main(){
	var n,k,ans int
	fmt.Scan(&n,&k)
	p := make([]int,n)
	for i:=0 ; i<n ; i++ {
		fmt.Scan(&p[i])
	}
	sort.Ints(p)
	for i:=0 ; i<k ; i++ {
		ans += p[i]
	}
	fmt.Println(ans)
}
