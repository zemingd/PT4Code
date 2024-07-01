package main

import (
	"fmt"
	"strings"
)

func main() {
	var n int
	var s string

	shar := "#"

	fmt.Scan(&n, &s)

	textList := strings.Split(s, "")

	blackStoneCount := 0
	whiteStoneCount := 0
	for _, val := range textList {
		if val == shar {
			blackStoneCount++
		} else {
			whiteStoneCount++
		}
	}
	if blackStoneCount < whiteStoneCount {
		fmt.Println(blackStoneCount)
	} else {
		fmt.Println(whiteStoneCount)
	}
}
