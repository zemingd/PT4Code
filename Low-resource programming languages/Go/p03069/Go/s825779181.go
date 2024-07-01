package main

import (
	"fmt"
)

func main() {
	var n int
	var s string
	fmt.Scan(&n)
	fmt.Scan(&s)

	count := 0
	left := 0
	for left < n - 1 {
		if s[left: left + 1] == "#" {
			pre := left
			for left < n - 1 && s[left + 1: left + 2] == "." {
				left++
			}
			count += left - pre
		}
		left++
	}

	min := count

	right := n
	count = 0
	for right > 1 {
		if s[right - 1: right] == "." {
			pre := right
			for right > 1 && s[right - 2: right - 1] == "#" {
				right--
			}
			count += pre - right
		}
		right--
	}

	if min > count {
		min = count
	}
	fmt.Println(min)
}
