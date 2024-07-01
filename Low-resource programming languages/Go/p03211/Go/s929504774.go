package main

import (
	"fmt"
	"strconv"
)

func main() {
	var a string
	fmt.Scan(&a)
	min := 753
	for i := 0; i < len(a)-2; i++ {
		b, _ := strconv.Atoi(a[i : i+3])
		var diff int
		if b > 753 {
			diff = b - 753
		} else {
			diff = 753 - b
		}
		if diff < min {
			min = diff
		}
	}
	fmt.Println(min)
}
