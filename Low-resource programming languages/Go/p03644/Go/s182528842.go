package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	
	max := 0
	maxcnt := 0
	
	for i := n; i >= 1; i-- {
		temp := i
		cnt := 0
		for temp % 2 == 0 {
			temp /= 2
			cnt++
		}
		if maxcnt < cnt {
			max = i
			maxcnt = cnt
		}
	}
	fmt.Println(max)
}
