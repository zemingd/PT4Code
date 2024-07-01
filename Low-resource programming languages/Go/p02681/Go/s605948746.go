package main

import "fmt"

func main() {
	s, t := input()
	if isEqual(s, t) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func isEqual(s, t string) bool {
	for i := range s {
		if s[i] != t[i] {
			return false
		}
	}
	return true
}

func input() (string, string) {
	var s, t string
	fmt.Scan(&s)
	fmt.Scan(&t)
	return s, t
}
