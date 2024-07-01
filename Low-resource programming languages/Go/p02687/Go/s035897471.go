package main

import "fmt"

func main() {
	var S string

	fmt.Scan(&S)

	if S == "ABC" {
		fmt.Println("ARC")
	} else {
		fmt.Println("ABC")
	}
}