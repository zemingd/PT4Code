package main

import (
	"fmt"
	"time"
)

func main() {
	last := time.Date(2019, 4, 30, 0, 0, 0, 0, time.UTC)

	var s string
	fmt.Scan(&s)

	t, _ := time.Parse("2006/01/02", s)

	if t.After(last) {
		fmt.Println("TBD")
	} else {
		fmt.Println("Heisei")
	}
}
