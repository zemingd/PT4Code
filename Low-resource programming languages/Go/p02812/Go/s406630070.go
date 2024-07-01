package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	var S string
	fmt.Scan(&S)
	ans := 0
	for i := 0; i <= N-3; i++ {
		if S[i:i+3] == "ABC" {
			ans++
		}
	}
	fmt.Println(ans)
}
