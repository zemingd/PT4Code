package main

import (
	"fmt"
)

func main() {
	var n,counter int
	fmt.Scan(&n)
	for i := 0; i < n/2 + 1 ; i++ {
		ncounter := 0
		j := i*2 + 1

		if j % 3 == 0 {
			ncounter += 1
		}
		if j % 5 == 0 {
			ncounter += 1
		}
		if j % 7 == 0 {
			ncounter += 1
		}
		if j % 11 == 0 {
			ncounter += 1
		}
		if j % 13 == 0 {
			ncounter += 1
		}

		if ncounter == 3 {
			counter += 1
		}
	}
	println(counter)
}

