package main

import (
	"fmt"
)

var num int

func main() {
	fmt.Scan(&num)
	ans := calc(num)
	fmt.Printf("%d", ans)
}

var can int

func calc(people int) int {
	for i := 0; i <= people; i++ {
		can += i
	}
	return can
}