package main

import "fmt"

func main() {
	// Code for B - A to Z String
	var s string
	fmt.Scanf("%s", &s)

	var A, Z int
	var flag int = 0
	for i := 0; i < len(s); i++ {
		if s[i] == 'A' && flag == 0 {
			A = i
			flag = 1
		} else if s[i] == 'Z' {
			Z = i
		}
	}

	fmt.Println(Z - A + 1)
}
