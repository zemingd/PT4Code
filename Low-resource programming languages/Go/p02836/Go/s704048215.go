package main

import (
	"fmt"
)

func reverse(s string) string {
	ans := ""
	for i := len(s) - 1; i >= 0; i-- {
		ans += string(s[i])
	}
	return ans
}

func main() {
	var str string
	fmt.Scan(&str)

	rev := reverse(str)

	count := 0
	for i := 0; i < len(str)/2; i++ {
		if str[i] != rev[i] {
			count++
		}
	}

	fmt.Println(count)
}
