package main

import (
	"fmt"
)

func getNextContest(s string) string {
	if s == "ABC" {
		return "ARC"
	} else if s == "ARC" {
		return "ABC"
	}
	return ""
}

func main() {
	var s string
	fmt.Scan(&s)

	fmt.Println(getNextContest(s))
}
