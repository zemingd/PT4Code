
package main

import (
	"fmt"
	"sort"
	)

	
func main() {
	var n int
	fmt.Scan(&n)
	m:=make([]int,n)
	c:=make([]int,n)
	
	for i:=0;i<n;i++{
		var ai int
		fmt.Scan(&ai)
		m[i] = ai
	}
	for i:=0;i<n;i++{
		c[i]=10e10
	}
	
	c[0] = m[0]
	for i:=1;i<n;i++{
		if m[i] <= c[0] {
			c[i] = m[i]
			sort.Ints(c)
		}
	}

	fmt.Println(len(c))

