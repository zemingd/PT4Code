package main

import (
	"fmt"
)

func main() {
	var n,m int
	fmt.Scan(&n,&m)
	
	left := 1
	right := n
	var l,r int
	for i := 0; i < m; i++ {
		fmt.Scan(&l,&r)
		if left < l {
			left = l
		}
		if r < right {
			right = r
		}
      //fmt.Printf("left=%d,right=%d\n", left, right)
	}
	if left <= right {
		fmt.Println(right - left + 1)
	} else {
		fmt.Println(0)
	}
}
