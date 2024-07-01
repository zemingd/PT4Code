package main

import "fmt"

func main() {
	var (
		S string
		K int
	)
	fmt.Scan(&S, &K)
	for i := 0; i < K && i < len(S); i++ {
		if S[i] >= '2' {
			fmt.Println(string(S[i]))
			return
		}
	}
	fmt.Println(1)
}
