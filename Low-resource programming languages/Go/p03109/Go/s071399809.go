package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {

	var s string
	fmt.Scan(&s)

	date := strings.Split(s, "/")
	year, _ := strconv.Atoi(date[0])
	month, _ := strconv.Atoi(date[1])
	day, _ := strconv.Atoi(date[2])

	if year > 2019 {
		fmt.Println("TBD")
		return
	} else {
		if month > 4 {
			fmt.Println("TBD")
			return
		} else {
			if day > 30 {
				fmt.Println("TBD")
				return
			}
		}
	}
	fmt.Println("Heisei")

}
