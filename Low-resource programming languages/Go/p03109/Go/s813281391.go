package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	ymd := strings.Split(s, "/")
	y, _ := strconv.Atoi(ymd[0])
	m, _ := strconv.Atoi(ymd[1])
	d, _ := strconv.Atoi(ymd[2])
	if y <= 2019 && m <= 4 && d <= 30 {
		fmt.Println("Heisei")
	} else {
		fmt.Println("TBD")
	}
}
