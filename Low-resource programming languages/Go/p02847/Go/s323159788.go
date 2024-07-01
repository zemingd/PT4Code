package main

import "fmt"

func main() {
	var (
		s string
	)
	week := [7]string{"SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"}
	fmt.Scan(&s)
	res := 0
	for i := 0; i < 7; i++ {
		if week[i] == s {
			res = (7 - i) % 7
		}
	}
	fmt.Println(res)
}
