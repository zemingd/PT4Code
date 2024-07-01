package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	dayMapping := map[string]int{
		"SUN": 7,
		"MON": 6,
		"TUE": 5,
		"WED": 4,
		"THU": 3,
		"FRI": 2,
		"SAT": 1,
	}
	fmt.Println(dayMapping[s])
}