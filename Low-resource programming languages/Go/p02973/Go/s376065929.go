
package main

import (
	"fmt"
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
		addc := false
		for j:=0;j<len(c);j++{
			if m[i] <= c[j] {
				addc = true
			} else {
				addc = false 
			}
		}
		if addc {
			c = append(c,m[i])
		}
	}

	fmt.Println(len(c))
}