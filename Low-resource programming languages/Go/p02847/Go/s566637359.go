package main

import (
	"fmt"
)

func main() {
	week := []string{"SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"}
	var s string
	fmt.Scan(&s)

	for i, v := range week {
		if s == v {
			fmt.Println(7 - i)
			return
		}
	}
}
