package main

import "fmt"

func main() {
	week := []string{"SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"}
	var s string
	fmt.Scan(&s)
	for i := 0; i < len(week); i++ {
		if s == week[i] {
			fmt.Println(len(week) - i)
			return
		}
	}
}
