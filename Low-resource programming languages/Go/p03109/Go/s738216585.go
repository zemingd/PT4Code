package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	y, _ := strconv.Atoi(strings.Split(s, "/")[0])
	m, _ := strconv.Atoi(strings.Split(s, "/")[1])
	d, _ := strconv.Atoi(strings.Split(s, "/")[2])
	if y <= 2019 && m <= 04 && d <= 30 {
		fmt.Println("Heisei")
		return
	}
	fmt.Println("TBD")
}
