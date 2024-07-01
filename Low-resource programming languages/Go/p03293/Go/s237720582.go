package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	for i := range s {
		tmp := s[i:] + s[:i]

		if tmp == t {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}
