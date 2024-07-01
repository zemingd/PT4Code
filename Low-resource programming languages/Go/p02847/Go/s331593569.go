package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	var current int
	switch s {
	case "SUN":
		current = 0
	case "MON":
		current = 1
	case "TUE":
		current = 2
	case "WED":
		current = 3
	case "THU":
		current = 4
	case "FRI":
		current = 5
	case "SAT":
		current = 6
	}
	fmt.Println(7 - current)
}
