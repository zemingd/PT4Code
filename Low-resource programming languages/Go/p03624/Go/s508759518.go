package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	alpha := "abcdefghijklmnopqrstuvwxyz"
	m := make(map[string]int)
	for i := range s {
		m[string(s[i])]++
	}
	for i := range alpha {
		if m[string(alpha[i])] == 0 {
			fmt.Println(string(alpha[i]))
			return
		}
	}
	fmt.Println("None")
}
