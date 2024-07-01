package main

import "fmt"

func main() {
	var N int
	var S string
	fmt.Scan(&N)
	fmt.Scan(&S)
	ans := 1
	for n := 0; n < N-1; n++ {
		if S[n] != S[n+1] {
			ans++
		}
	}
	fmt.Println(ans)
}
