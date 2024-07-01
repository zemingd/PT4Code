package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var str string
	fmt.Scan(&str)
	date := strings.Split(str, "/")
	var y, m, d int
	y, _ = strconv.Atoi(date[0])
	m, _ = strconv.Atoi(date[1])
	d, _ = strconv.Atoi(date[2])
	if y > 2019 {
		fmt.Println("TBD")
	} else if y == 2019 && m == 4 && d == 30 {
		fmt.Println("Heisei")
	} else if y == 2019 && m < 4 {
		fmt.Println("Heisei")
	} else if y == 2019 {
		fmt.Println("TBD")
	} else {
		fmt.Println("Heisei")
	}
}
