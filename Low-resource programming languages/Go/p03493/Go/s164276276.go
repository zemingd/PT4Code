package main

import (
	"fmt"
	"strconv"
)

func main() {
	var a string
	fmt.Scan(&a)
	s1, _ := strconv.Atoi(a[0:1])
	s2, _ := strconv.Atoi(a[1:2])
	s3, _ := strconv.Atoi(a[2:3])
	sum := s1 + s2 + s3
	fmt.Println(sum)
}
