package main

import "fmt"

var s,w int
func main() {
	fmt.Scan(&s, &w)
	if s<=w {

		fmt.Println("unsafe")
	} else {

		fmt.Println("safe")
	}
}
