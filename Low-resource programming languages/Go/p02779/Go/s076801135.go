package main

import (
	"fmt"
)

func main() {
	var N int
	m := map[int]int{}
	fmt.Scan(&N)

	a := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&a[i])
		m[a[i]] = 0
	}

	yesOrNo := true
	for i := 0; i < N; i++ {
		m[a[i]]++
		if m[a[i]] > 1 {
			yesOrNo = false
		}
	}

	if yesOrNo {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
