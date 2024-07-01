package main

import "fmt"


func main() {
	m := map[string]int{
		"SUN": 0,
		"MON": 1,
		"TUE": 2,
		"WED": 3,
		"THU": 4,
		"FRI": 5,
		"SAT": 6,
	}
	var s string
	fmt.Scan(&s)
	fmt.Println(7 - m[s])
}
