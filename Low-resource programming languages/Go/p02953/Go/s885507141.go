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

	cnt := 0
	isSameDoubled := false

	for i := 1; i < n; i++ {
		if l[i-1] > l[i] {
			if l[i-1]-l[i] > 1 {
				cnt += 100000
				break
			} else {
				if i < n-1 && l[i] < l[i+1] && isSameDoubled {
					cnt += 100000
					break
				}
				cnt++
			}
		}
		if l[i-1] == l[i] {
			isSameDoubled = true
		} else {
			isSameDoubled = false
		}
	}

	if cnt <= 1 {
		fmt.Print("Yes")
	} else {
		fmt.Print("No")
	}
}
