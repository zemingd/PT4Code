package main

import "fmt"

func main() {
	var x int
	fmt.Scan(&x)
	m := 100
	y := 0
	for {
		y++
		m += m / 100
		if m > x {
			break
		}
	}
	fmt.Println(y)
}