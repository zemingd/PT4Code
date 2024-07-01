package main

import (
	"fmt"
)

func solution(a, b, c int) string {
	var ans string = "No"
	if a == b {
		if a == c {
			ans = "No"
		} else {
			ans = "Yes"
		}
	} else if a == c {
		ans = "Yes"
	} else if b == c {
		ans = "Yes"
	}

	return ans
}

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)
	fmt.Println(solution(a, b, c))
}
