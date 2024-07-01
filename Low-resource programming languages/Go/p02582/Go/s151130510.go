package main

import (
	"fmt"
	"strings"
)

func RunA() {
	var s string
	fmt.Scanf("%s", &s)

	//fmt.Print(strings.Count(s, "R"))

	if s == "RRR" {
		fmt.Println("3")
	} else if strings.Contains(s, "RR") {
		fmt.Println("2")
	} else if strings.Contains(s, "R") {
		fmt.Println("1")
	} else {
		fmt.Println("0")
	}
}