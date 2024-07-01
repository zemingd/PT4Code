package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	var ans []string
	fmt.Scan(&s)

	for _, v := range s {
		if v == '0' {
			ans = append(ans, "0")
		} else if v == '1' {
			ans = append(ans, "1")
		} else if v == 'B' && len(ans) != 0 {
			ans = ans[:len(ans)-1]
		}
	}
	fmt.Println(strings.Join(ans, ""))
}