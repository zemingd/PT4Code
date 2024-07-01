package main

import (
	"fmt"
	"regexp"
)

func main() {
	var S string
	fmt.Scan(&S)
	m, _ := regexp.MatchString("([a-z])", S)
	if m {
		fmt.Println("a")
	} else {
		fmt.Println("A")
	}
}
