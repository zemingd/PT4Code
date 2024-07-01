package main

import (
	"fmt"
	"math"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)

	var (
		slice = strings.Split(s, "")
		flag0 = 0.0
		flag1 = 0.0
	)
	for _, x := range slice {
		if x == "0" {
			flag0++
		} else {
			flag1++
		}
	}

	answer := math.Min(flag0, flag1) * 2
	fmt.Println(answer)
}
