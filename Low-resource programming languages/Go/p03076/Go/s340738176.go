package main

import (
	"fmt"
)

func main() {
	list := make([]int, 5)
	for i := range list {
		fmt.Scan(&list[i])
	}

	mini := 0
	mind := 9
	for i, v := range list {
		if v%10 == 0 {
			continue
		}
		if v%10 <= mind {
			mini = i
			mind = v % 10
		}
	}

	var sum int
	for i, v := range list {
		if i == mini || v%10 == 0 {
			sum += v
			continue
		}
		sum += v + 10 - v%10
	}
	fmt.Println(sum)
}
