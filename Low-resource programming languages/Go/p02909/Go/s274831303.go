package main

import (
	"fmt"
)

func main() {
	s := scanStr()

	switch s {
	case "Sunny":
		fmt.Println("Cloudy")
	case "Cloudy":
		fmt.Println("Rainy")
	default:
		fmt.Println("Sunny")
	}

}

func scanStr() string {
	var s string
	fmt.Scan(&s)
	return s
}

func scanInt() int {
	var i int
	fmt.Scan(&i)
	return i
}
