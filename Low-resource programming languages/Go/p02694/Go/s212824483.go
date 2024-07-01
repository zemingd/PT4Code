package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)
	year := 0
	for i := 100; i < n; i = int(float64(i) * 1.01) {
		year++
	}
	fmt.Println(year)
}
