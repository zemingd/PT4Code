package main

import (
	"fmt"
)

func main() {
	var n int
	vehicle := make([]int, 5)
	fmt.Scan(&n)
	for i := range vehicle {
		fmt.Scan(&vehicle[i])
	}

	min := vehicle[0]
	for i := 1; i < 5; i++ {
		if min > vehicle[i] {
			min = vehicle[i]
		}
	}
	if n%min != 0 {
		fmt.Println(n/min + 5)
	} else {
		fmt.Println(n/min + 4)
	}
}
