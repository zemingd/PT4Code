package main

import "fmt"

func main() {
	var N int
	var S, T string
	fmt.Scan(&N, &S, &T)
	v := ""
	for i := 0; i < N; i++ {
		v += S[i:i+1] + T[i:i+1]
	}
	fmt.Println(v)
}
