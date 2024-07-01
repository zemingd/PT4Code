package main

import "fmt"

func main() {
	var N, M int
	fmt.Scan(&N, &M)
	max := 1
	for di := 2; di*di <= M; di++ {
		if M%di != 0 {
			continue
		}
		if M/di >= N {
			max = Max(max, di)
		}
	}
	fmt.Println(max)
}

func Max(a, b int) int {
	if a < b {
		return b
	}
	return a
}
