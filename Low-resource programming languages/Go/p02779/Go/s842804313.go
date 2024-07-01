package main

import (
	"fmt"
)

func main() {
	var N int
	var a []int
	m := make(map[int]int)

	fmt.Scan(&N)
	a = make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &a[i])
	}

	yesOrNo := true
	for j := 0; j < N; j++ {
		if _, found := m[a[j]]; found {
			m[a[j]]++
			yesOrNo = false
		} else {
			m[a[j]] = 1
		}
	}

	if yesOrNo {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
