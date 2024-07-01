package main

import (
	"fmt"
)

func main() {
	var x,ans int
	fmt.Scan(&x)
	
	for i := x; i < 100004; i++ {
		judge := true
		for j := 2; j < i; j++ {			
			if i % j == 0 {
				judge = false
				break
			}

		}
		if judge {
			ans = i
			break
		}
	}
	fmt.Println(ans)
}