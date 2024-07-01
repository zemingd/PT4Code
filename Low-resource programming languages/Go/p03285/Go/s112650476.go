package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	var cnt = 0
	for i := 0; i <= n; i++ {
		for j := 0; j <= n; j++ {
			if 4*i+7*j == n {
				cnt++
			}
		}
	}
	if cnt != 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
