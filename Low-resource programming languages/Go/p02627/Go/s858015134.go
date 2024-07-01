package main

import (
	"fmt"
	"regexp"
)

func main() {

	var A string
	fmt.Scan(&A)

	r := regexp.MustCompile(A)

	if r.MatchString("abcdefghijklmnopqrstuvwxyz") {
		fmt.Println("a")
	} else {
		fmt.Println("A")
	}

}
