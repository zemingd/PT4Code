package main

import (
	"fmt"
	"strings"
)

func intmin() func(int) int {
	isFirst := true
	min := 0
	return func(a int) int {
		if isFirst {
			isFirst = false
			min = a
			return a
		}
		if min > a {

			return a
		}
		return min
	}
}
func main() {
	var S, T string
	fmt.Scan(&S, &T)

	s := strings.Split(S, "")
	t := strings.Split(T, "")

	count := 0
	min := 0
	isFirst := true

	for offset := 0; offset <= len(S)-len(T); offset++ {

		for i := 0; i < len(T); i++ {

			if s[offset+i] != t[i] {
				count++
			}

		}

		min = func(a int) int {
			if isFirst {
				isFirst = false
				return a
			}
			if min > a {
				return a
			}
			return min
		}(count)

		count = 0

	}
	fmt.Println(min)

}
