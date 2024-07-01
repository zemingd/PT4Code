package main

import (
	"fmt"
)

func main() {
	var s int
	if _, err := fmt.Scan(&s); err != nil {
		panic(err)
	}

	hours := s / 3600
	minutes := (s % 3600) / 60
	seconds := (s % 3600) % 60
	fmt.Printf("%d:%d:%d\n", hours, minutes, seconds)
}

