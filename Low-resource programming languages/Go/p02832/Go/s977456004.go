package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	
	bricks := make([]int,n)
	
	target := 1
	for i,_ := range bricks {
		fmt.Scan(&bricks[i])
		if bricks[i] == target {
			target++
		}
	}
	ans := n - (target - 1)
	
	if ans == n {
		fmt.Println("-1")
	} else {
		fmt.Println(ans)
	}
	
}