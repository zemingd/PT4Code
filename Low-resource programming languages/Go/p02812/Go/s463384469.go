package main

import "fmt"

func main() {
	var N int
	var S string
	fmt.Scan(&N, &S)
	ans := 0
	for i := 0; i+2 < N; i++ {
		if S[i:i+3] == "ABC" {
			ans++
		}
	}
	fmt.Println(ans)
}
