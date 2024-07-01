package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	parts := strings.Split(s, "/")
	y, _ := strconv.Atoi(parts[0])
	m, _ := strconv.Atoi(parts[1])
	d, _ := strconv.Atoi(parts[2])
	if y <= 2019 {
		if m < 4 {
			fmt.Println("Heisei")
			return
		} else if m == 4 {
			if d <= 30 {
				fmt.Println("Heisei")
				return
			}
		}
	}
	fmt.Println("TBD")
}
