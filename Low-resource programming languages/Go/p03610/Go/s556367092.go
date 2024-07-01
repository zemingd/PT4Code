package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	letters := strings.Split(s, "")
	var ans []string
	for i, letter := range letters {
		if (i+1)%2 != 0 {
			ans = append(ans, letter)
		}
	}
	fmt.Println(strings.Join(ans, ""))
}
