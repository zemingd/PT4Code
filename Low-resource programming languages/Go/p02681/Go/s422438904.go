package main

import "fmt"

func main() {
	var S, T string
	fmt.Scan(&S, &T)
	T_ := T[0 : len(T)-1]
	if T_ == S {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
