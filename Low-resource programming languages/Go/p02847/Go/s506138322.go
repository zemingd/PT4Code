package main

import (
	"fmt"
)

func main() {
	var S string
	fmt.Scan(&S)

	ans := func() int {
		switch S {
		case "SUN":
			return 7
		case "MON":
			return 6
		case "TUE":
			return 5
		case "WED":
			return 4
		case "THU":
			return 3
		case "FRI":
			return 2
		case "SAT":
			return 1
		}
		return 0
	}()

	fmt.Println(ans)
}
