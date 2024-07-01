package main

import "fmt"

func main() {
	var S, T string
	fmt.Scan(&S, &T)
	var ans int
	for i := 0; i < len(S); i++ {
		if S[i] != T[i] {
			ans++
		}
	}
	fmt.Println(ans)
}
