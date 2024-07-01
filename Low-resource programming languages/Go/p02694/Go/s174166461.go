package main

import (
	"fmt"
)

func main() {
	var x int
	fmt.Scan(&x)

	a := 100
	var cnt int
	for {
		cnt++
		a = a + int(float64(a)*0.01)
		if a >= x {
			fmt.Println(cnt)
			return
		}
	}
}
