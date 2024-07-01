package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	var S, T string
	fmt.Scan(&S, &T)
	ans := ""
	for i := 0; i < N; i++ {
		ans += string(S[i])
		ans += string(T[i])
	}
	fmt.Println(string(ans))
}
