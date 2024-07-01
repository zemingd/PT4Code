package main

import "fmt"

func main() {
	var S string
	fmt.Scan(&S)
	s := "Zabcdefghijklmnopqrstuvwxyz"
	var a [1 + 26]bool
	for i := 0; i < len(S); i++ {
		for j := 1; j < len(s); j++ {
			if S[i] == s[j] {
				a[j] = true
			}
		}
	}
	for i := 1; i < len(s); i++ {
		if !a[i] {
			fmt.Printf("%c\n", s[i])
			return
		}
	}
	fmt.Println("None")
}
