package main

import (
	"fmt"
	"os"
)

func run() int {
	var s string
	fmt.Scanf("%s", &s)

	week := make(map[string]int, 8)

	week["SUN"] = 7
	week["MON"] = 6
	week["THE"] = 5
	week["WED"] = 4
	week["THU"] = 3
	week["FRI"] = 2
	week["SAT"] = 1

	fmt.Println(week[s])

	return 0
}

func main() {
	os.Exit(run())
}
