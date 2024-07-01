package main

import (
	"fmt"
)

func main() {
	n := 0
	f := false
	fmt.Scan(&n)
	for j := 0; j <= n/4; j++ {
		for k := 0; k <= n/7; k++ {
			if 4*j+7*k == n {
				f = true
			}
		}
	}
	if f {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
