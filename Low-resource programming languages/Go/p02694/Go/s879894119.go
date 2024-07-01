package main

import (
	"fmt"
)

func main() {
	var x int
	fmt.Scan(&x)

	now := 100
	cnt := 0
	for now < x {
		now = now + now / 100
		cnt++;
	}
	fmt.Println(cnt)
}
