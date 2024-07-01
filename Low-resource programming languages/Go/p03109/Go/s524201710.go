package main

import (
	"fmt"
	"time"
)

func main() {
	var s string
	fmt.Scan(&s)

	layout := "2006/01/02"
	date, _ := time.Parse(layout, s)
	if date.After(time.Date(2019, 4, 30, 0, 0, 0, 0, time.UTC)) {
		fmt.Println("TBD")
	} else {
		fmt.Println("Heisei")
	}
}
