package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	week := map[string]int{
		"MON": 1,
		"TUE": 2,
		"WED": 3,
		"THU": 4,
		"FRI": 5,
		"SAT": 6,
		"SUN": 7,
	}

	fmt.Println(week[s])
}
