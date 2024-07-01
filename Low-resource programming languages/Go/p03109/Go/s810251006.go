package main

import (
	"fmt"
	"strconv"
	"time"
)

func main() {
	var s string
	fmt.Scan(&s)

	y, _ := strconv.Atoi(s[0:4])
	m, _ := strconv.Atoi(s[5:7])
	d, _ := strconv.Atoi(s[8:10])

	t1 := time.Date(y, time.Month(m), d, 0, 0, 0, 0, time.UTC)
	t2 := time.Date(2019, 4, 30, 0, 0, 0, 0, time.UTC)
	if t1.After(t2) {
		fmt.Println("TBD")
	} else {
		fmt.Println("Heisei")
	}
}
