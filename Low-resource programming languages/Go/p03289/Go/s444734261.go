package main

import (
	"fmt"
	"regexp"
)

func main() {
	var S string
	fmt.Scan(&S)

	r := regexp.MustCompile(`^A[a-z][a-z]*C[a-z]*[a-z]$`)
	if r.MatchString(S) {
		fmt.Println("AC")
	} else {
		fmt.Println("WA")
	}
}
