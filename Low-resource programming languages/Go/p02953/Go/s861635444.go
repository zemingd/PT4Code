package main

import (
	"fmt"
)

func main() {
	var n int
	var l []int

	fmt.Scanf("%d", &n)
	l = make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &l[i])
	}

	isNg := false
	cnt := 0

	for i := 1; i < n; i++ {
		if l[i-1] > l[i] {
			if l[i-1]-l[i] > 1 {
				isNg = true
				break
			}
			cnt++
			if cnt > 1 {
				break
			}
		} else if l[i-1] < l[i] {
			cnt = 0
		}
	}

	if !isNg && cnt <= 1 {
		fmt.Print("Yes")
	} else {
		fmt.Print("No")
	}
}
