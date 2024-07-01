package main

import "fmt"

func main() {
	var s string
	var t string

	fmt.Scanf("%s", &s)
	fmt.Scanf("%s", &t)

	count := 0
	for i := 0; i < 3; i++ {
		if s[i] == t[i] {
			count++
		}
	}

	fmt.Println(count)
}
