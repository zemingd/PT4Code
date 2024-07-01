package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	as := make([]int, n)
	for i := range as {
		fmt.Scan(&as[i])
	}

	var msg string
	if isDistinct(as) {
		msg = "YES"
	} else {
		msg = "NO"
	}

	fmt.Print(msg)
}

func isDistinct(as []int) bool {
	m := make(map[int]int)
	for _, a := range as {
		if m[a] == 0 {
			m[a]++
		} else {
			return false
		}
	}
	return true
}