package main

import (
	"fmt"
	"strconv"
)

func main() {
	var (
		s  string
		s1 int64
		s2 int64
		s3 int64
	)

	fmt.Scan(&s)

	a, _ := strconv.ParseInt(s, 2, 0)
	s1 = a / 4
	s2 = (a - s1*4) / 2
	s3 = (a - s1*4 - s2*2) % 2
	fmt.Println(s1 + s2 + s3)
}
