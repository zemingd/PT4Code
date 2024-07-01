
package main

import (
	"fmt"
	"sort"
	)

	
func main() {
	var n int
	fmt.Scan(&n)
	m:=make([]int,n)
	c:=make([]int,0,n)
	
	for i:=0;i<n;i++{
		var ai int
		fmt.Scan(&ai)
		m[i] = ai
	}

	
	for i:=0;i<n;i++{
		k := sort.Search(len(c), func(j int)bool{return c[j]<m[i]})
		if k == len(c){
			c= append(c,m[i])
		} else {
			c[i]=m[i]
		}
	}

	fmt.Println(len(c))
}
