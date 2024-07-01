package main

import (
	"fmt"
)

func main() {
	var s string

	fmt.Scan(&s)

	if s == "SSS" {
		fmt.Print("0")
	} else if s == "SSR" || s == "SRS" || s == "RSS" || s == "RSR" {
		fmt.Print("1")
	} else if s == "SRR" || s == "RRS" {
		fmt.Print("2")
	} else if s == "RRR" {
		fmt.Print("3")
	}
}
