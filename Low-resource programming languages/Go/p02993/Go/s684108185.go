package main

import (
	"fmt"
	"strings"
)

func hasSerial(a []string) bool {
	for i, v := range a {
		if i == 0 {
			continue
		}
		if a[i-1] == v {
			return true
		}
	}
	return false
}

func main() {
	var s string
	fmt.Scan(&s)
	a := strings.Split(s, "")

	if hasSerial(a) {
		fmt.Println("Bad")
	} else {
		fmt.Println("Good")
	}
}
