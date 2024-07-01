
package main

import (
	"fmt"
	"sort"
	)

	
func main() {
	var n int
	fmt.Scan(&n)
	m:=[]int{}
	c:=[]int{}
	
	for i:=0;i<n;i++{
		var ai int
		fmt.Scan(&ai)
		m=append(m,ai)
	}
	
	c = append(c, m[0])
	for i:=1;i<n;i++{
		if m[i] <= c[0] {
			c = append(c,m[i])
			sort.Ints(c)
		}
	}

	fmt.Println(len(c))
}
