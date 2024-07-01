package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	var T []rune = []rune(s)

	for i := 0; i < len(T); i++ {
		c := T[i]
		if c == '?' {
			T[i] = 'D'
		}
	}
	fmt.Println(string(T))
}
