package main

import "fmt"

func main() {
	var S, T string
	fmt.Scan(&S, &T)

	if S == T[:len(T)-1] {
		fmt.Println("yes")
	} else {
		fmt.Println("no")
	}
}
