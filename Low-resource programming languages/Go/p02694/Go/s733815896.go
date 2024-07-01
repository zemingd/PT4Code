package main

import "fmt"

func main() {
	risi := 1
	var x int
	fmt.Scan(&x)

	val := 100
	year := 0
	for val < x {
		val = val + val*risi/100
		year++
	}
	fmt.Println(year)
}