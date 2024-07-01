package main

import (
	"fmt"
)

func canNotWaitForHoliday(s string) int {
	switch s {
	case "SUN":
		return 7
	case "MON":
		return 6
	case "TUE":
		return 5
	case "WED":
		return 4
	case "THU":
		return 3
	case "FRI":
		return 2
	case "SAT":
		return 1
	}
	return 0
}

func main() {
	var s string
	fmt.Scan(&s)
	fmt.Println(canNotWaitForHoliday(s))
}
