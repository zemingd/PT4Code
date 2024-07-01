package main

import (
	"fmt"
	"strings"
)

func main() {
	var s, t string
	count := 0
	fmt.Scan(&s)
	fmt.Scan(&t)

	splitS := strings.Split(s, "")
	splitT := strings.Split(t, "")

	for index, value := range splitS {
		if value == splitT[index] {
			count++
		}
	}

	fmt.Println(count)
}
