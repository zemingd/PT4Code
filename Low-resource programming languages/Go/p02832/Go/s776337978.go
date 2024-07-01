package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	list := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&list[i])
	}

	result := 0
	now := 1
	flag := 0

	for i := 0; i < n; i++ {
		if list[i] == 1 {
			flag = 1
		}
		if list[i] != now {
			result++
		} else {
			now++
		}

	}
	if flag == 1 {
		fmt.Println(result)
	} else {
		fmt.Println(-1)
	}
}
