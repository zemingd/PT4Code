package main

import (
	"fmt"
)

func main() {
	var weather string
	var k int
	fmt.Scan(&weather)
	for i := 0; i < 3; i++ {
		if weather[i] == 'R' {
			k++
		}
	}
	if k == 0 || k == 1 || k == 3 {
		fmt.Printf("%d", k)
	} else if weather[1] == 'S' {
		fmt.Printf("1")
	} else {
		fmt.Printf("2")
	}
}
