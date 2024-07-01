package main

import (
	"fmt"
)

func main() {
	var X int64
	fmt.Scan(&X)
	var y int64 = 100
	ctr := 0
	for {
		if y >= X {
			fmt.Println(ctr)
			return
		}
		y += y / 100
		ctr++
	}
}
