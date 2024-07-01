package main

import "fmt"

func main() {
	var N, tmp int
	fmt.Scan(&N)
	D := []int{}
	for n := 0; n < N; n++ {
		fmt.Scanf("%d", &tmp)
		D = append(D, tmp)
	}
	ans := 0
	for i := 0; i < N; i++ {
		for j := i + 1; j < N; j++ {
			ans += D[i] * D[j]
		}
	}
	fmt.Println(ans)
}
