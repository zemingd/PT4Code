package main

import (
	"fmt"
)

func main() {
	var S, T string
	fmt.Scan(&S, &T)
	if S == T[0:len(T)-1] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
