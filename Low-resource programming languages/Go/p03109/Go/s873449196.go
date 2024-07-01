package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	heiseiEndsAt := 20180430

	var s string
	fmt.Scan(&s)

	s = strings.Replace(s, "/", "", 2)

	date, _ := strconv.Atoi(s)
	if heiseiEndsAt < date {
		fmt.Println("TBD")
	} else {
		fmt.Println("Heisei")
	}
}
