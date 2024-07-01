package main

import (
	"fmt"
)

func main() {
	var n,x int
	fmt.Scan(&n,&x)
	
	l := make([]int,n)
	for i := range l {
		fmt.Scan(&l[i])
	}
	
	d := make([]int, n+1)
	cnt := 1
	for i := 1; i < n+1 ; i++ {
		d[i] = d[i-1] + l[i-1]
		if d[i] <= x {
			cnt++
        } 
	}
	fmt.Println(cnt)
}