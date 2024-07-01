package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	m := make(map[rune]int)
	for _, r := range s {
		m[r]++
	}
	for c := 'a'; c <= 'z'; c++ {
		if m[c] == 0 {
			fmt.Printf("%c\n", c)
			break
		}
		if c == 'z' {
			fmt.Println("None")
		}
	}
}
