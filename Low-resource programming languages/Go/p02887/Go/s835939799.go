package main

import "fmt"

func main() {
	var (
		N int
		S string
	)
	fmt.Scanf("%d", &N)
	fmt.Scanf("%s", &S)

	ans := 1
	for i := 1; i < N; i++ {
		if S[i-1] != S[i] {
			ans++
		}
	}
	fmt.Println(ans)
}
