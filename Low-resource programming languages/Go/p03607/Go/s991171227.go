package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	
	a := make(map[int]int)
	
	tmp := 0
	for i := 0; i < n; i++ {
		fmt.Scan(&tmp)
		a[tmp]++
	}
	
	cnt := 0
	for _,v := range a {
		if v % 2 != 0 {
			cnt++
		}
	}
	//fmt.Println(a)
	fmt.Println(cnt)
}