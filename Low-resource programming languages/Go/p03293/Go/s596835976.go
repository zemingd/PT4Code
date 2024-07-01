package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	word := s
	for i := 0; i < len(s); i++ {
		fst := word[:1]
		str := word[1:]
		word = str + fst
		if word == t {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}
