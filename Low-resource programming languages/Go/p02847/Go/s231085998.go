package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	m := map[string]int{"SUN": 1, "MON": 2, "TUE": 3, "WED": 4, "THU": 5, "FRI": 6, "SAT": 7}
	fmt.Println(8 - m[s])
}
