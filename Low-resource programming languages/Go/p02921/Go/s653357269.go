package main

import "fmt"

func main() {
	var S, T string
	var cnt int
	fmt.Scan(&S, &T)
	for i := 0; i < len(S); i++ {
		if S[i:i+1] == T[i:i+1] {
			cnt++
		}
	}
	fmt.Println(cnt)
}