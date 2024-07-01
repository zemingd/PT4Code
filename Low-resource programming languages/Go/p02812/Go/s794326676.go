package main

import "fmt"

func main() {
	var (
		N int
		S string
	)

	fmt.Scanf("%d", &N)
	fmt.Scanf("%s", &S)

	ans := 0
	for i := 0; i < N-2; i++ {
		if S[i:i+3] == "ABC" {
			ans++
		}
	}
	fmt.Println(ans)
}
