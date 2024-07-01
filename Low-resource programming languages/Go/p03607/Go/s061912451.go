package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	mp := map[int]bool{}
	for i := 0; i < n; i++ {
		var v int
		fmt.Scan(&v)
		mp[v] = !mp[v]
	}
	sum := 0
	for _, v := range mp {
		if v {
			sum++
		}
	}
	fmt.Println(sum)
}
