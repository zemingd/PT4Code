package main

import "fmt"

func main() {
	var S, T string
	fmt.Scan(&S, &T)

	result := 0
	for i := 0; i <= len(S)-len(T); i++ {
		count := 0
		for j := 0; j < len(T); j++ {
			if S[i+j] == T[j] {
				count++
			}
		}
		if count > result {
			result = count
		}
	}
	fmt.Println(len(T) - result)
}
