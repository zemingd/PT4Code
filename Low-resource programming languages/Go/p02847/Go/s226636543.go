package main

import(
	"fmt"
)

func main() {
	var day string
	fmt.Scan(&day)
	
	s := map[string]int {
		"SUN":7,
		"MON":6,
		"TUE":5,
		"WED":4,
		"THU":3,
		"FRI":2,
		"SAT":1,
	}
	
	fmt.Println(s[day])
}
