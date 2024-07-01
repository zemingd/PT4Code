package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	foods := make([]int, N)
	satisfactions := make([]int, N)
	bonuses := make([]int, N-1)

	for i := 0; i < N; i++ {
		fmt.Scan(&foods[i])
	}
	for i := 0; i < N; i++ {
		fmt.Scan(&satisfactions[i])
	}
	for i := 0; i < N-1; i++ {
		fmt.Scan(&bonuses[i])
	}

	ans := 0
	for i := 0; i < N; i++ {
		ans += satisfactions[i]
		if i > 0 && foods[i]-foods[i-1] == 1 {
			ans += bonuses[foods[i-1]-1]
		}
	}

	fmt.Println(ans)
}
