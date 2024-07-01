package main

import (
	"fmt"
)

func main() {
	var S string
	fmt.Scan(&S)
	var ans int
	switch S {
	case "SAT":
		ans = 1
	case "FRI":
		ans = 2
	case "THU":
		ans = 3
	case "WED":
		ans = 4
	case "TUE":
		ans = 5
	case "MON":
		ans = 6
	case "SUN":
		ans = 7
	}

	fmt.Println(ans)
}
