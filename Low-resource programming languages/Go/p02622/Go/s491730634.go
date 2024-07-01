package main

import "fmt"

func main() {
	var S, T string
	fmt.Scan(&S)
	fmt.Scan(&T)

	var cnt int
	cnt = 0
	for i := 0; i < len(S); i++ {
		if S[i] != T[i] {
			cnt += 1
		}

	}
	fmt.Println(cnt)
}
