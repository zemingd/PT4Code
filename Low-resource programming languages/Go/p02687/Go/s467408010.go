package main

import "fmt"

func main() {
	var str string
	fmt.Scan(&str)
	if str == "ABC" {
		fmt.Println("ARC")
	} else {
		fmt.Println("ABC")
	}
}
