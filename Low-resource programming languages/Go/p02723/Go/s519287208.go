package main

import (
	"fmt"
	"regexp"
)

func main() {
	var str string
	fmt.Scanf("%s", &str)
	r := regexp.MustCompile(`()$`)
	if r.Match([]byte(str)) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
