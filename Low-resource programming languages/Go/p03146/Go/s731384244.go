package main

import (
	"fmt"
)

func main() {
	var s int
	fmt.Scan(&s)
	list := make([]int, 1000000)

	list[0] = s
	for i := 1; i < 1000000; i++ {
		if list[i-1]%2 == 0 {
			list[i] = list[i-1] / 2
		} else {
			list[i] = 3*list[i-1] + 1
		}
		for j := 0; j < i; j++ {
			if list[i] == list[j] {
				fmt.Println(i + 1)
				return
			}
		}
	}
}
