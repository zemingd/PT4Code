package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	if s[:] == t[:len(t)-1]{
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
