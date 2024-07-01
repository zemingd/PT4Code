package main

import "fmt"

func main() {
	var s string
	week := map[string]int{
		"SUN": 0,
		"MON": 1,
		"TUE": 2,
		"WED": 3,
		"THU": 4,
		"FRI": 5,
		"SAT": 6,
	}
	fmt.Scan(&s)
	fmt.Println(7 - week[s])
}
