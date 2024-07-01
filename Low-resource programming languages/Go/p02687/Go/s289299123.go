package main

import "fmt"

func main() {
	var S string

	fmt.Scan(&S)

	if S == "ABC" {
		fmt.Prinln("ARC")
	} else {
		fmt.Prinln("ABC")
	}
}