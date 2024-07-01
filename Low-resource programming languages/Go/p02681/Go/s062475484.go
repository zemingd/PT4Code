package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	for i := 0; i < len([]byte(s)); i++ {
		if s[i] != t[i] {
			fmt.Println("No")
			return
		}
	}
	fmt.Println("Yes")
}