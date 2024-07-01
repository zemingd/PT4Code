package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s)
	fmt.Scan(&t)

	if s == t[:len(s)] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}