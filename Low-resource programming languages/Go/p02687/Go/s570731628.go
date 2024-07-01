package main

import (
	"fmt"
)


func main() {
	var str string
	fmt.Scan(&str)

	switch str {
	case "ABC":
		fmt.Println("ARC")
	default:
		fmt.Println("ABC")
	}
}