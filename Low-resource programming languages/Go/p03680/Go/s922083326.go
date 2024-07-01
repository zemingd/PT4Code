package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	
	buttons := make([]int, n)
	for i := range buttons {
		fmt.Scan(&buttons[i])
		buttons[i]--
	}
	
	target := 0
	cnt := 1
	for i := 0; i < n; i++ {
		if buttons[target] == 1 {
			fmt.Println(cnt)
			return
		} else {
			target = buttons[target]
			cnt++
		}
	}
	fmt.Println(-1)
}