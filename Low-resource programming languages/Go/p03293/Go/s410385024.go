package main

import "fmt"

func main() {
	var S, T string
	fmt.Scan(&S, &T)
	Sstring := []rune(S)
	characters := len(Sstring)
	for i := 0; i < characters; i++ {
		if T != S {
			S = string(Sstring[characters-1]) + string(Sstring[:characters-1])
			Sstring = []rune(S)
		} else {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}
