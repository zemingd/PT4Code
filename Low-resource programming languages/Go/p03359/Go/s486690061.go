package main

import (
	"fmt"
	"log"
	"time"
)

func main() {
	var month, day int
	fmt.Scan(&month)
	fmt.Scan(&day)
	start, err := time.Parse("2006-01-02", "2018-01-01")
	if err != nil {
		log.Fatal(err)
	}
	end, err := time.Parse("2006-01-02", fmt.Sprintf("2018-%02d-%02d", month, day))
	if err != nil {
		log.Fatal(err)
	}
	count := 0
	for start.Before(end) || start.Equal(end) {
		_, m, d := start.Date()
		if int(m) == d {
			count++
		}
		start = start.AddDate(0, 0, 1)
	}
	fmt.Println(count)
}
