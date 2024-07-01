package main

import (
	"fmt"
)

// main is ...
func main() {
	var s string
	fmt.Scan(&s)

	wdays := [...]string{"SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"}

	for idx, value := range wdays {
		if value == s {

			fmt.Print(7 - idx)
			return

		}
	}

	fmt.Print(-1)
}

