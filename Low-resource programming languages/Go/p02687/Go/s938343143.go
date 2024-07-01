package main

import (
	"fmt"
)

func main() {
	contest_abc := "ABC"
	contest_arc := "ARC"

	var s string

	fmt.Scan(&s)

	if contest_abc == s {
		fmt.Println(contest_arc)
	} else if contest_arc == s {
		fmt.Println(contest_abc)
	}
}