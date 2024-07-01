package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	if t[0:len(s)] == s {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
