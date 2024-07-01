package main

import "fmt"

func main() {
	var s, t string
	fmt.Scanf("%s", &s)
	fmt.Scanf("%s", &t)

	for i := 0; i < len(s); i++ {
		r := s[i:] + s[:i]
		if r == t {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}
