package main

import (
	"fmt"
	"strconv"
)

func main() {
	var s string
	fmt.Scan(&s)

	m, _ := strconv.Atoi(s[5:7])
	d, _ := strconv.Atoi(s[9:10])

	if v := 100*m + d; v <= 430 {
		fmt.Println("Heisei")
	} else {
		fmt.Println("TBD")
	}
}
