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

	count := 0
	flag := false
	for i := 0; i < n; i++ {
		for j := 0; j <= i; j++ {
			if flag == false {
				if list[i] > list[j] {
					break
				}
			}
			if list[i] > list[j] {
				flag = false
				break
			} else if list[i] <= list[j] {
				flag = true
			}
		}
		if flag == true {
			count++
		}
	}

	fmt.Println(count)

}
