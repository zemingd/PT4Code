package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var n string
	fmt.Scan(&n)

	ss := strings.Split(n, "/")
	y, _ := strconv.Atoi(ss[0])
	m, _ := strconv.Atoi(ss[1])
	// d, _ := strconv.Atoi(ss[2])

	if y > 2019 {
		fmt.Println("TBD")
		return
	}
	if m > 4 {
		fmt.Println("TBD")
		return
	}
	fmt.Println("Heisei")
}
