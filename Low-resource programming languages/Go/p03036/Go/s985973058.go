package main

import (
	"fmt"
)

func main() {
	var r, d, x int
	fmt.Scan(&r, &d, &x)

	cal := x
	for i := 0; i < 10; i++ {
		cal = r*cal - d
		fmt.Println(cal)
	}
}
