package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	
	p := make([]int,n)
	for i := range p {
		fmt.Scan(&p[i])
	}

	min := p[0]
	ans := 1
	for i := 1; i < n; i++ {
		if min > p[i] {
			ans++
			min = p[i]
		} 
	}
	fmt.Println(ans)
}