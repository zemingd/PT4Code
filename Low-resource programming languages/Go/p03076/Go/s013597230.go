package main

import "fmt"

func main() {
	s := make([]int, 5)
	for i := range s {
		fmt.Scan(&s[i])
	}

	min := 0
	lastDiff := 0
	for i := range s {
		if s[i]%10 != 0 && lastDiff > (s[i]%10-10) {
			lastDiff = (s[i]%10 - 10)
		}
		min += s[i]
		for min%10 != 0 {
			min++
		}
	}

	fmt.Println(min + lastDiff)
}
