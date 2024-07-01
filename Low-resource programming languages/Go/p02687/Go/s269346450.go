package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	abc := "ABC"
	arc := "ARC"

	if s == abc {
		fmt.Println(arc)
	} else {
		fmt.Println(abc)
	}
}
