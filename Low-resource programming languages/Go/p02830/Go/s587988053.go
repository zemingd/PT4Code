package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	T := make([]byte, N)
	S := make([]byte, N)
	fmt.Scan(&S)
	fmt.Scan(&T)
	result := Combine(N, S, T)
	fmt.Println(string(result))
}

func Combine(N int, S, T []byte) []byte {
	result := make([]byte, 0, len(S)+len(T))
	for i := 0; i < N; i++ {
		result = append(result, S[i])
		result = append(result, T[i])
	}
	return result
}
