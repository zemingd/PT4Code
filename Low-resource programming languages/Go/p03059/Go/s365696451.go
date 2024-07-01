package main

import (
	"fmt"
)

func main() {
	var a, b, t int
	fmt.Scan(&a, &b, &t)

	if a > t {
		fmt.Print(0)
		return
	}

	time := 0
	maked := 0
	cnt := 1
	for time <= t {
		maked += b
		cnt++
		time = a * cnt
	}

	fmt.Print(maked)

}
