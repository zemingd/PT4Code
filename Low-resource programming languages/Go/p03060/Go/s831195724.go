package main

import (
	"fmt"
)

type ll int64


func main() {

	var N int
	fmt.Scan(&N)

	value := make([]int, N)
	cost := make([]int, N)

	for i := 0 ; i < N ; i++ {
		fmt.Scan(&value[i])
	}

	for i := 0 ; i < N ; i++ {
		fmt.Scan(&cost[i])
	}

	var ans = 0

	for i := 0 ; i < N ; i++ {
		if value[i] >= cost[i] {
			ans += value[i] - cost[i]
		}

	}

	fmt.Println(ans)

}
