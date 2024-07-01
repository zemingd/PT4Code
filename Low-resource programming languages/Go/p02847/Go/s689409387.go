package main

import (
	"fmt"
)

func main() {
	var S string
	fmt.Scanf("%s", &S)
	switch S {
	case "SUN":
		fmt.Println(7)
	case "MON":
		fmt.Println(6)
	case "TUE":
		fmt.Println(5)
	case "WED":
		fmt.Println(4)
	case "THU":
		fmt.Println(3)
	case "FRI":
		fmt.Println(2)
	default:
		fmt.Println(1)
	}
}
