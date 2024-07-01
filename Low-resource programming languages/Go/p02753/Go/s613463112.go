package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	for i := 1; i < 3; i++ {
		if s[i] != s[0] {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}
