package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	ans := false
	for i := 0; i < 3; i++ {
		if s[i] == s[i+1] {
			ans = true
		}
	}
	if ans {
		fmt.Println("Bad")
	} else {
		fmt.Println("Good")
	}
}
