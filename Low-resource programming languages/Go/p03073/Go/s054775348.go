package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	countFrom0 := 0
	countFrom1 := 0

	for i, c := range s {
		if i%2 == 0 {
			if c == '0' {
				countFrom1++
			}
			if c == '1' {
				countFrom0++
			}
		} else {
			if c == '1' {
				countFrom1++
			}
			if c == '0' {
				countFrom0++
			}
		}
	}

	fmt.Println(min(countFrom0, countFrom1))

}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
