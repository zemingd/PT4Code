package main

import "fmt"

type DayWeeks []string

func (d DayWeeks) Index(findStr string) int {
	for i, dayWeek := range d {
		if dayWeek == findStr {
			return i
		}
	}
	return -1
}

func main() {
	var input string
	fmt.Scanf("%s", &input)
	d := DayWeeks{"SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"}
	fmt.Println(7 - d.Index(input))
}