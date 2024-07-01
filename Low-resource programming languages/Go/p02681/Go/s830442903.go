package main

import "fmt"

func main() {
	var S, T string
	fmt.Scan(&S)
	fmt.Scan(&T)
	if len(S)+1 == len(T) && S == T[:len(T)-1] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
