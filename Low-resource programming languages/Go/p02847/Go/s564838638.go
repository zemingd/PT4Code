package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	var result int
	switch s {
	case "SUN":
		result = 7
	case "MON":
		result = 6
	case "TUE":
		result = 5
	case "WED":
		result = 4
	case "THU":
		result = 3
	case "FRI":
		result = 2
	case "SAT":
		result = 1
	}
	fmt.Println(result)
}