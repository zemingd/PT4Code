package main

import "fmt"

func fnMin(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var count1, count0 int
	var s string
	fmt.Scan(&s)
	for i := 0; i < len(s); i++ {
		if i%2 == 0 {
			if s[i] == 48 {
				count0++
			} else {
				count1++
			}
		} else {
			if s[i] == 49 {
				count0++
			} else {
				count1++
			}
		}
	}
	fmt.Println(fnMin(count0, count1))
}
