package main

import "fmt"

func main() {
	// Code for A - Children and Candies (ABC Edit)
	var N int
	fmt.Scanf("%d", &N)
	var ans int
	for i := 0; i < N; i++ {
		ans += i + 1
	}

	fmt.Println(ans)
}
