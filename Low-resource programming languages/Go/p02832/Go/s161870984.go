package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	cnt := 1
	for i := 0; i < n; i++ {
		var a int
		fmt.Scan(&a)
		if a == cnt {
			cnt++
		}
	}
	if cnt == 1 {
		fmt.Println(-1)
	} else {
		fmt.Println(n - cnt + 1)
	}
}
