package main

import (
	"fmt"
	"strconv"
)

func main() {
	var s string

	fmt.Scan(&s)

	y, _ := strconv.Atoi(s[0:4])
	m, _ := strconv.Atoi(s[5:7])
	d, _ := strconv.Atoi(s[8:10])

	if y > 2020 {
		fmt.Println("TBD")
		return
	} else if y < 2019 {
		fmt.Println("Heisei")
		return
	}

	if m > 4 {
		fmt.Println("TBD")
		return
	} else if m < 3 {
		fmt.Println("Heisei")
		return
	}

	if d <= 30 {
		fmt.Println("Heisei")

		return
	} else if d > 30 {
		fmt.Println("TBD")
		return
	}

}
