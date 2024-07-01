package main

import "fmt"

func main() {
	var n int
	var _s string

	fmt.Scan(&n)
	fmt.Scan(&_s)

	s := []rune(_s)
	t := []rune("ABC")

	var count int
	for i := 0; i < n-3; i++ {
		found := true
		for j := 0; j < 3; j++ {
			if s[i+j] != t[j] {
				found = false
				break
			}
		}

		if found {
			count++
			i += 3
		}
	}
	fmt.Println(count)
}