package main

import "fmt"

func main() {
	var N int
	var S, T string
	result := ""
	fmt.Scan(&N)
	fmt.Scan(&S, &T)
	for i := 0; i < len(S); i++ {
		result += string(S[i]) + string(T[i])
	}
	fmt.Println(result)
}
