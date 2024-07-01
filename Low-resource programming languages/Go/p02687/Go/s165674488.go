package main

import "fmt"

func main() {
	var lastContest string
	fmt.Scan(&lastContest)

	if lastContest == "ABC" {
		fmt.Println("ARC")
	} else {
		fmt.Println("ABC")
	}
}
