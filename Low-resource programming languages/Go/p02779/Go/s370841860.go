package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)
	a := make([]bool, 1000000001)
	isPairWise := true
	for i := 0; i < n; i++ {
		var next int
		fmt.Scanf("%d", &next)
		if a[next] {
			isPairWise = false
		} else {
			a[next] = true
		}
	}
	if isPairWise {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
