package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	if string(s[2]) == string(s[3]) && string(s[4]) == string(s[5]) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}