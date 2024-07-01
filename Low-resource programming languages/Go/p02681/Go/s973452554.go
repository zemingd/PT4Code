package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	if s[0:len(s)] == t[0:len(s)] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
