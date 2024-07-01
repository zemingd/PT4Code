package main

import "fmt"

func main() {
	var s, t string
	fmt.Scanf("%s", &s)
	fmt.Scanf("%s", &t)

	if len(s) + 1 != len(t) {
		fmt.Println("No")
		return
	}

	if s != t[:len(t)-1] {
		fmt.Println("No")
		return
	}

	fmt.Println("Yes")
}
