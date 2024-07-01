package main

import "fmt"

func main() {
	var S, T string
	fmt.Scan(&S, &T)
	ans := "No"
	for i := 0; i < len(S); i++ {
		if S == T {
			ans = "Yes"
			break
		}
		S = S[len(S)-1:] + S[0:len(S)]
	}
	fmt.Println(ans)
}
