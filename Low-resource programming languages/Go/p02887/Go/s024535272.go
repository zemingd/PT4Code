package main

import (
	"fmt"
	"strings"
)

func main() {
	var n int
	var s string
	fmt.Scan(&n)
	fmt.Scan(&s)
	slimes := strings.Split(s, "")
	result := 1
	var prevSlime string
	for i, slime := range slimes {
		if i == 0 {
			prevSlime = slime
		} else {
			if prevSlime != slime {
				result++
				prevSlime = slime
			} else {
				// do nothing
			}
		}
	}
	fmt.Println(result)
}
