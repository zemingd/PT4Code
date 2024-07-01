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
		msg = "Yes"
	} else {
		msg = "No"
	}

	fmt.Print(msg)
}

func isDistinct(as []int) bool {
	if len(as) > 1 {
		for i := 0; i < len(as) - 1; i++ {
			tmp := as[i]
			for j := i+1; j < len(as) - 1; j++ {
				if tmp == as[j] {
					return false
				}
			}
		}
	}
	return true
}